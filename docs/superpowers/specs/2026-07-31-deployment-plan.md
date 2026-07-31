# 《回忆》物理部署方案（内网隔离访问模型落地）

> 日期：2026-07-31
> 机密等级：**内部（仅核心维护者）**——含内网拓扑、端口、密钥策略。将来迁入私有仓 `Reminiscence-Core/docs/`。
> 目标：私有代码（C 引擎/Mixin/注册窗口/AI 集成）永不落地个人电脑；源码只存在于内网；产物签名出网。

## 1. 拓扑总览

```
[开发设备] ──WireGuard VPN──▶ [内网服务器]
                                 │
              ┌──────────────────┼──────────────────┐
              ▼                  ▼                  ▼
         Gitea(私有仓)     Gitea Actions Runner   开发/构建环境
         端口 3000/22       (C 工具链)             SSH:22 · code-server:8443
                                 │
                             构建产物
                                 ▼
                          [签名私钥(服务器内)]
                                 │ 签名后
                                 ▼
                          出网目录 → 同步 → GitHub 公开仓 / 渠道
```

- 服务器形态：自建（家庭/机房）或云 VPC 均可——要求：有公网可达 IP（或云弹性 IP）供 WireGuard 端点
- 个人电脑只是"显示器"：所有私有代码操作发生在服务器上（SSH/VS Code Remote/Web IDE）

## 2. 服务器准备

- OS：Debian 12（或 Ubuntu 22.04+）x86_64
- 防火墙（ufw）：仅放行 51820/UDP（WireGuard）、22/TCP（SSH，可限来源）、3000/TCP（Gitea，仅 VPN 网段）、8443/TCP（code-server，仅 VPN 网段）
- 云安全组同理：只暴露 51820/22，其余内网隔离
- 内存 ≥ 8GB（构建 C 引擎 + Gitea + runner 同时跑），磁盘 ≥ 100GB（源码 + 构建产物 + 备份），建议 NVMe

## 3. WireGuard 搭建

### 服务端（服务器上）

```ini
# /etc/wireguard/wg0.conf
[Interface]
Address = 10.66.0.1/24
ListenPort = 51820
PrivateKey = <服务器私钥>          # wg genkey 生成，权限 600
PostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
PostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE

[Peer]                            # 每个开发设备一个 Peer
PublicKey = <设备公钥>
AllowedIPs = 10.66.0.2/32         # 每设备独立 IP + 独立密钥对
```

启用：`systemctl enable --now wg-quick@wg0`；内核开启 `net.ipv4.ip_forward=1`。

### 客户端（开发设备）

```ini
[Interface]
Address = 10.66.0.2/24
PrivateKey = <设备私钥>

[Peer]
PublicKey = <服务器公钥>
Endpoint = <服务器公网IP>:51820
AllowedIPs = 10.66.0.0/24
PersistentKeepalive = 25
```

验证：`ping 10.66.0.1` 通即接入。

## 4. Gitea 部署（Docker Compose）

```yaml
# /opt/gitea/docker-compose.yml
services:
  gitea:
    image: gitea/gitea:1.22
    container_name: gitea
    restart: unless-stopped
    environment:
      - USER_UID=1000
      - USER_GID=1000
      - GITEA__server__DOMAIN=gitea.lan
      - GITEA__server__ROOT_URL=http://gitea.lan:3000/
      - GITEA__server__SSH_DOMAIN=gitea.lan
      - GITEA__server__SSH_PORT=222
      - GITEA__server__LFS_START_SERVER=true
    volumes:
      - ./data:/data
    ports:
      - "10.66.0.1:3000:3000"     # 只绑定 VPN 网段，绝不暴露公网
      - "10.66.0.1:222:22"        # SSH 走 VPN
```

- 客户端 `~/.ssh/config`：`Host gitea.lan\n  HostName 10.66.0.1\n  Port 222\n  User git`
- 首次安装：注册唯一管理员（包作者），创建私有仓 `Reminiscence-Core`（唯一存在地）
- 备份：`gitea dump` 定时任务 + 加密后异地（见 §8）

## 5. 内网 CI（Gitea Actions + 私有 runner）

- 服务器上安装 runner：`act_runner`（Gitea 官方 runner），以 systemd 服务常驻，注册 token 从 Gitea 管理界面获取
- C 引擎构建工具链（服务器上）：gcc/clang、cmake、ninja、JDK 8（Mixin 层构建）、OpenJDK 21（Cleanroom 侧测试）
- 构建流程（`Reminiscence-Core/.gitea/workflows/build.yml`）：
  1. checkout 私有仓
  2. 编译 C 引擎（-O2 + strip）→ 生成 native 库
  3. 构建 Mixin 层 jar（混淆：ProGuard/R8）
  4. 运行单元测试（引擎自测）
  5. 产物签名（见 §6）→ 输出到 `artifacts-signed/`
- 推送/PR 均触发；构建失败阻止合并（双人审查 + CI 双门）

## 6. 产物签名出网

- 签名私钥：服务器上生成（`gpg --full-generate-key` 或 ssh-keygen 签名密钥），**永不导出**，仅服务器可用
- 签名流程（CI 步骤）：`gpg --detach-sign --armor artifact.jar` 产出 `.sig`
- 出网目录：`/srv/export/`（仅 CI 可写）——人工或流水线将 `artifact.jar + .sig` 同步到 GitHub 公开仓 `pack/core/`
- 公开仓/发布物校验：`gpg --verify`（公钥放公开仓 `pack/core/PUBLIC.asc`）
- 客户端/启动器：加载核心前验证签名（与完整性校验联动——软校验的"非官方修改版"判定依据之一）

## 7. 远程开发与 AI 会话

- **远程开发**：`ssh dev@10.66.0.1`（SSH key，禁用密码登录）；VS Code Remote-SSH 直接开服务器工作区；或 code-server（`--bind-addr 10.66.0.1:8443`）浏览器开发
- **AI 会话（模式 A）**——位置弹性，数据不泄露四条：
  - 内网方案：服务器上跑 Claude Code CLI（最小权限：只读私有仓 + 任务分支）
  - 云端方案：云服务器跑 Claude Code，经 SSH 隧道/独立 WireGuard Peer 访问内网（10.66.0.x 段分配）
  - 四条硬要求：加密通道 / 最小权限 / 会话隔离（与公开任务分工作区）/ 密钥管理（签名私钥、API 密钥不进 AI 环境）
- **外部执行者（模式 B）**：只给 GitHub 公开仓，无 VPN 权限

## 8. 备份与恢复

- Gitea 数据：每日 `gitea dump` → 加密（`age`/gpg）→ 异地（云对象存储/另一台机器）
- 服务器整体：每周全量快照（`rsync` + 加密）→ 异地
- 恢复演练：每季度一次（从备份恢复 Gitea + runner，验证可构建）
- **风险提示**：内网服务器是私有代码唯一存在地——备份策略不执行 = 源码永久丢失风险

## 9. 安全清单（上线检查）

- [ ] 防火墙仅开放 51820/22，Gitea/code-server 仅绑 VPN 网段
- [ ] SSH 禁密码登录、禁 root 直登、fail2ban
- [ ] WireGuard 每设备独立密钥对；离职/外部会话即时吊销（删除 Peer）
- [ ] Gitea 仅管理员可建仓；私有仓无访客
- [ ] 签名私钥仅存服务器，无导出路径
- [ ] 备份加密 + 异地 + 恢复演练记录
- [ ] 公开仓泄露扫描 CI 已启用（对模式 A/B 一视同仁）
- [ ] 构建产物签名校验脚本在公开仓 `pack/core/verify.sh`

## 10. 实施顺序（约 2-3 天工作量）

1. 服务器准备（OS/防火墙/工具链）
2. WireGuard 服务端 + 客户端接通
3. Gitea 部署 + 私有仓初始化（迁移现有 docs/specs 机密文档）
4. runner + 构建流水线 + 签名出网打通（先做 hello-world 产物验证）
5. 远程开发环境（SSH/code-server）+ AI 会话接入
6. 备份 + 安全清单过检
