# 护城河策略（方案 C：源码全公开 + CC BY-NC-ND 4.0）

## 仓库与许可（2026-07-31 修订：双仓库闭源 → 全公开）

- **单仓库公开** `Reminiscence`（全部源码：C 引擎/Mixin 层/注册窗口/AI 集成/脚本/配置/文档）
- **许可证：CC BY-NC-ND 4.0**（贪婪整合包同款，官方法律文本存 `LICENSE-CC-BY-NC-ND-4.0.txt`）——禁止商业使用、禁止演绎（改后分发）；配合 EULA 禁搬运/禁嵌入其他整合包
- 开发期：私有仓开发（Reminiscence-Core 保留），**发布时转公开**——开发期保护未完成内容，发布即开源
- 无混淆（源码公开混淆无意义）· 无 NDA/CLA（贡献走 DCO：`Signed-off-by` 声明 + inbound=outbound）· 签名保留（防投毒可选）· 渠道指纹保留（防搬运溯源）· 强依赖保留（拆核心=机制消失）

**防线映射**：防代码级搬运/洗包 = 强（CC + EULA）；防"思路级借鉴" = 弱（机制/玩法不受版权保护，重写合法——闭源同样防不了法律层面，只是隐藏了实现难度）。

## 三层防线

- **法律**：EULA（禁搬运/逆向/拆包提取/商业利用，见 `docs-dev/legal/eula.md`）· modlist 逐模组授权标注（CurseForge 要求）· compliance 强制项（AI 实现修改的许可证核查——MIT/Apache 可、GPL 不可）· CC BY-NC-ND（禁商业/禁演绎）
- **技术**：强依赖（拆核心=机制消失）· 软校验（哈希不符 → 提示"非官方修改版" + 机制降级）· 渠道指纹（HMAC(渠道名, 私密盐)——各渠道独立构建，搬运可溯源）· 完整性校验
- **流程**：双执行者模型（内部会话/外部执行者——见 spec-workflow）· 开发期私有仓 + CI 泄露扫描 · 发布检查清单（compliance → 冒烟 → 签名 → 指纹）

## 开发期管理（方案 C）

- 开发期：GitHub 私有仓（Reminiscence-Core）保存未发布内容——发布时转公开
- 构建：GitHub Actions 自托管 runner（本机）· 签名私钥存 Actions Secrets · GitHub 多副本备份
- 物理部署机制（WireGuard/Gitea/内网）已删除——方案 C 不需要

## 文档体系

- 玩家 `docs/`：README / getting-started / gameplay(四层/进度/角色/定制) / modlist / troubleshooting / eula
- 公开开发 `docs-dev/`：architecture（公开/私有边界图）· repo-map · mod-customization · build-and-release · **spec-workflow（双执行者模型 + DCO）** · compliance · adr
- 纪律：文档描述行为不描述实现（方案 C 后此纪律放宽——实现已在源码中，文档聚焦玩家/开发体验）
