#!/bin/bash
# 《回忆》内网服务器初始化脚本
# 用法: sudo bash server-init.sh   （Debian 12 / Ubuntu 22.04+，root 或 sudo）
# 机密：仅内网部署使用，勿公开分发
set -euo pipefail

echo "==> 1/8 系统更新与基础工具"
apt-get update -y && apt-get upgrade -y
apt-get install -y wireguard wireguard-tools ufw fail2ban \
    docker.io docker-compose-v2 git rsync age gpg \
    build-essential cmake ninja-build \
    openjdk-8-jdk openjdk-21-jdk-headless curl wget

echo "==> 2/8 防火墙（仅 51820/22，Gitea/code-server 绑 VPN 网段由容器/服务层限制）"
ufw default deny incoming
ufw default allow outgoing
ufw allow 51820/udp comment 'wireguard'
ufw allow 22/tcp comment 'ssh'
ufw --force enable
systemctl enable --now fail2ban

echo "==> 3/8 内核转发"
sysctl -w net.ipv4.ip_forward=1
echo 'net.ipv4.ip_forward=1' > /etc/sysctl.d/99-wireguard.conf

echo "==> 4/8 WireGuard 密钥生成（服务端）"
umask 077
mkdir -p /etc/wireguard
if [ ! -f /etc/wireguard/privatekey ]; then
  wg genkey | tee /etc/wireguard/privatekey | wg pubkey > /etc/wireguard/publickey
fi
echo "服务端公钥: $(cat /etc/wireguard/publickey)"
echo "（客户端配置需要此公钥 + 本机公网 IP）"

echo "==> 5/8 创建 WireGuard 配置（手动补 [Peer] 段：每个开发设备）"
cat > /etc/wireguard/wg0.conf <<EOF
[Interface]
Address = 10.66.0.1/24
ListenPort = 51820
PrivateKey = $(cat /etc/wireguard/privatekey)
PostUp = iptables -A FORWARD -i wg0 -j ACCEPT; iptables -t nat -A POSTROUTING -o $(ip route | awk '/default/{print $5; exit}') -j MASQUERADE
PostDown = iptables -D FORWARD -i wg0 -j ACCEPT; iptables -t nat -D POSTROUTING -o $(ip route | awk '/default/{print $5; exit}') -j MASQUERADE

# [Peer] 示例（每个开发设备一段，删除示例）
# PublicKey = <设备公钥>
# AllowedIPs = 10.66.0.2/32
EOF
systemctl enable --now wg-quick@wg0 || echo "!! WireGuard 启动失败——检查 /etc/wireguard/wg0.conf 后手动 systemctl start wg-quick@wg0"

echo "==> 6/8 创建出网目录"
mkdir -p /srv/export /srv/artifacts
chmod 700 /srv/export /srv/artifacts

echo "==> 7/8 签名密钥（GPG）——若不存在则生成"
if ! gpg --list-secret-keys --keyid-format long 2>/dev/null | grep -q 'sec'; then
  gpg --batch --gen-key <<EOF
%no-protection
Key-Type: eddsa
Key-Curve: ed25519
Key-Usage: sign
Name-Real: Reminiscence Core Signing
Name-Email: core-signing@reminiscence.local
Expire-Date: 0
%commit
EOF
fi
echo "签名公钥（导出到公开仓 pack/core/PUBLIC.asc）:"
gpg --armor --export core-signing@reminiscence.local | tee /srv/export/PUBLIC.asc

echo "==> 8/8 完成"
echo "下一步：1) 编辑 /etc/wireguard/wg0.conf 补 [Peer]  2) 运行 gitea-setup.sh 部署 Gitea"
