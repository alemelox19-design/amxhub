AMX HUB 9.0.3 STABLE - DEPLOY ORACLE CLOUD FREE

Objetivo
- Subir o AMX HUB em uma VPS gratuita Oracle Cloud Always Free.
- Manter a chave OpenAI somente no servidor.
- Manter os dados em /var/lib/amx-hub via AMX_DATA_DIR.
- Rodar o Node como servico permanente pelo systemd.
- Publicar pela porta 80 usando Nginx como proxy.

Passo 1 - Criar a VPS
1. Criar conta Oracle Cloud Free Tier.
2. Criar uma instancia Ubuntu Always Free.
3. Liberar entrada TCP 80 na Security List ou Network Security Group.
4. Acessar por SSH.

Passo 2 - Enviar o projeto
No seu computador, envie o ZIP para a VPS:

scp AMX-HUB-9-0-3-STABLE.zip ubuntu@IP_DA_VPS:/home/ubuntu/

Na VPS:

sudo mkdir -p /opt/amx-hub
sudo chown -R ubuntu:ubuntu /opt/amx-hub
unzip /home/ubuntu/AMX-HUB-9-0-3-STABLE.zip -d /opt/amx-hub
cd /opt/amx-hub

Passo 3 - Configurar .env
Copie o exemplo:

cp deploy/oracle/env.production.example .env
nano .env

Obrigatorio alterar:
- OPENAI_API_KEY
- AMX_ADMIN_USER
- AMX_ADMIN_PASSWORD
- AMX_SESSION_SECRET

Enquanto estiver usando IP/http, mantenha:
AMX_COOKIE_SECURE=false

Quando colocar dominio com HTTPS, altere para:
AMX_COOKIE_SECURE=true

Passo 4 - Instalar e iniciar

chmod +x deploy/oracle/install-oracle-ubuntu.sh
./deploy/oracle/install-oracle-ubuntu.sh

Passo 5 - Acessar

http://IP_DA_VPS

Comandos uteis
- Status: sudo systemctl status amx-hub --no-pager
- Logs: sudo journalctl -u amx-hub -f
- Reiniciar: sudo systemctl restart amx-hub
- Atualizar app: enviar novo ZIP, descompactar em /opt/amx-hub e reiniciar.

Backup
- Pelo AMX HUB: aba Admin > Gerar Backup > Baixar backup.
- No servidor, os dados persistentes ficam em /var/lib/amx-hub.

Observacao importante
- O plano gratuito e adequado para validacao e uso leve.
- Para uso diario critico, mantenha rotina de backup e considere dominio com HTTPS.
