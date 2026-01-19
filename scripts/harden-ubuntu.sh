#!/usr/bin/env bash
set -euo pipefail

echo "== Ubuntu Hardening Script =="
ufw default deny incoming
ufw default allow outgoing
ufw allow 22/tcp
ufw --force enable

systemctl enable fail2ban
systemctl start fail2ban
echo "Hardening Complete!"
