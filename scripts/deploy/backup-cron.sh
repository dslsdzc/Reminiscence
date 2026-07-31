#!/bin/bash
# 每日备份：Gitea dump + 加密 → 异地
# 用法: sudo bash backup-cron.sh <异地目标路径或ssh目标> <age公钥>
# 例: sudo bash backup-cron.sh root@backup-host:/backup "age1..."
set -euo pipefail

DEST="${1:?用法: backup-cron.sh <异地目标> <age公钥>}"
AGE_PUB="${2:?需要 age 公钥}"

# 1. Gitea dump
mkdir -p /srv/backup
cd /srv/backup
docker exec gitea gitea dump --config /data/gitea/conf/app.ini --file /tmp/gitea-dump.zip
docker cp gitea:/tmp/gitea-dump.zip /srv/backup/gitea-$(date +%F).zip

# 2. WireGuard 配置 + 签名密钥备份（加密后才允许出网）
tar czf /srv/backup/keys-$(date +%F).tar.gz -C /etc wireguard 2>/dev/null || true
gpg --export-secret-keys --armor 2>/dev/null > /srv/backup/signing-$(date +%F).asc || true

# 3. age 加密全部
for f in /srv/backup/*.zip /srv/backup/*.tar.gz /srv/backup/*.asc; do
  [ -f "$f" ] || continue
  age -r "$AGE_PUB" -o "$f.age" "$f"
  rm -f "$f"
done

# 4. 传输异地
rsync -avz --remove-source-files /srv/backup/ "$DEST/"

# 5. 本地保留最近 7 天
find /srv/backup -name '*.age' -mtime +7 -delete

echo "==> 备份完成: $(date)"
echo "==> 恢复演练：每季度从异地拉回解密，验证 gitea dump 可导入"
