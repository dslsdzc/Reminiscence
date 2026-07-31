#!/bin/bash
# Gitea Actions 私有 runner 安装
# 用法: sudo bash runner-setup.sh <注册token>
set -euo pipefail

TOKEN="${1:?用法: sudo bash runner-setup.sh <注册token>}"
mkdir -p /opt/runner && cd /opt/runner

# 下载 act_runner（按 Gitea 版本选择；以官方 release 为准）
VER="0.2.11"
if [ ! -f act_runner ]; then
  curl -sL "https://gitea.com/gitea/act_runner/releases/download/v${VER}/act_runner-${VER}-linux-amd64" -o act_runner
  chmod +x act_runner
fi

# 注册（指向内网 Gitea）
./act_runner register --instance "http://10.66.0.1:3000" --token "$TOKEN" --no-interactive \
  --name "reminiscence-core-runner" --labels "self-hosted:host"

# systemd 常驻
cat > /etc/systemd/system/act-runner.service <<EOF
[Unit]
Description=Gitea Actions Runner (Reminiscence Core)
After=network-online.target docker.service
Requires=docker.service

[Service]
User=root
WorkingDirectory=/opt/runner
ExecStart=/opt/runner/act_runner daemon
Restart=always
RestartSec=5

[Install]
WantedBy=multi-user.target
EOF

systemctl daemon-reload
systemctl enable --now act-runner

# 工具链检查
echo "==> 工具链验证："
gcc --version | head -1
cmake --version | head -1
java -version 2>&1 | head -1

echo "==> runner 已注册并常驻。工作流文件放在私有仓 .gitea/workflows/ 下"
echo "==> 重要：act_runner 配置文件 .runner 含注册密钥，勿提交/导出"
