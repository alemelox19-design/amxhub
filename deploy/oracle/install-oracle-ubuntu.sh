#!/usr/bin/env bash
set -euo pipefail

echo "AMX HUB - preparo Oracle/Ubuntu"

sudo apt-get update
sudo apt-get install -y curl unzip nginx

if ! command -v node >/dev/null 2>&1; then
  curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
  sudo apt-get install -y nodejs
fi

sudo mkdir -p /opt/amx-hub /var/lib/amx-hub
sudo chown -R ubuntu:ubuntu /opt/amx-hub /var/lib/amx-hub

cd /opt/amx-hub
npm install --omit=dev

sudo cp /opt/amx-hub/deploy/oracle/amx-hub.service /etc/systemd/system/amx-hub.service
sudo cp /opt/amx-hub/deploy/oracle/nginx-amx-hub.conf /etc/nginx/sites-available/amx-hub
sudo ln -sf /etc/nginx/sites-available/amx-hub /etc/nginx/sites-enabled/amx-hub
sudo rm -f /etc/nginx/sites-enabled/default

sudo nginx -t
sudo systemctl daemon-reload
sudo systemctl enable amx-hub
sudo systemctl restart amx-hub
sudo systemctl restart nginx

echo "Instalacao concluida."
echo "Verifique: sudo systemctl status amx-hub --no-pager"
