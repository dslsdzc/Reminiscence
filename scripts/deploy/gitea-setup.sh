#!/bin/bash
# Gitea 部署（Docker Compose，仅绑 VPN 网段 10.66.0.1）
# 用法: sudo bash gitea-setup.sh
set -euo pipefail

VPN_IP="${VPN_IP:-10.66.0.1}"
mkdir -p /opt/gitea /opt/gitea/data

cat > /opt/gitea/docker-compose.yml <<EOF
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
      - "${VPN_IP}:3000:3000"
      - "${VPN_IP}:222:22"
EOF

cd /opt/gitea && docker compose up -d

echo "==> Gitea 已启动（仅 VPN 网段可访问）"
echo "  Web:    http://${VPN_IP}:3000   （首次访问完成安装，注册唯一管理员）"
echo "  SSH:    ssh -p 222 git@${VPN_IP}"
echo ""
echo "==> 安装后立即执行："
echo "  1. 创建私有仓 Reminiscence-Core"
echo "  2. 管理界面生成 runner 注册 token → 运行 runner-setup.sh <token>"
echo "  3. 关闭公开注册（设置→站点管理→禁止新用户注册）"
