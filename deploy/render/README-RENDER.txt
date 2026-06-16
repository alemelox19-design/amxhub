AMX HUB 9.0.3 STABLE - DEPLOY RENDER FREE

Objetivo
- Publicar o AMX HUB online sem cartao, como piloto/validacao.
- Manter OPENAI_API_KEY somente nas variaveis de ambiente do Render.
- Ativar login do HUB com AMX_AUTH_ENABLED=true.

Aviso importante
- Render Free e bom para validar acesso online.
- O armazenamento local pode ser temporario entre reinicios/redeploys.
- Use a aba Admin > Gerar Backup com frequencia.
- Para uso diario critico, migrar depois para ambiente com persistencia real.

Passo 1 - Criar conta
1. Acesse https://render.com
2. Clique em Get Started.
3. Entre com GitHub ou crie conta por e-mail.

Passo 2 - Colocar o projeto no GitHub
1. Criar um repositorio no GitHub.
2. Enviar os arquivos do AMX HUB.
3. Nunca enviar o arquivo .env real.
4. O arquivo .gitignore ja bloqueia .env e node_modules.

Passo 3 - Criar o Web Service no Render
1. No Render, clique em New.
2. Escolha Web Service.
3. Conecte o repositorio do AMX HUB.
4. Configure:
   - Runtime: Node
   - Build Command: npm install
   - Start Command: npm start
   - Plan: Free

Passo 4 - Variaveis de ambiente
Configure no Render:

NODE_ENV=production
OPENAI_API_KEY=sua_chave_openai
OPENAI_MODEL=gpt-4.1
AMX_AUTH_ENABLED=true
AMX_ADMIN_USER=admin
AMX_ADMIN_PASSWORD=sua_senha_forte
AMX_SESSION_SECRET=um_texto_longo_secreto
AMX_SESSION_HOURS=12
AMX_COOKIE_SECURE=true

Passo 5 - Acessar
- Ao finalizar o deploy, o Render vai gerar uma URL parecida com:
  https://amx-hub-9-0-3-stable.onrender.com
- Abra a URL e entre com o usuario/senha configurados.

Backup
- Antes de cadastrar dados importantes, teste a aba Admin > Gerar Backup.
- Baixe backups regularmente enquanto estiver no plano gratuito.
