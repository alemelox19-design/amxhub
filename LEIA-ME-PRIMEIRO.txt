AMX HUB 9.0.3 STABLE

Alterações aplicadas:
- Base com 12 cooperativas cadastradas: 11 oficiais da versão 9.0.3 e
  Sicoob Credifor importada do projeto ANALISTA AMX.
- Contagem do Dashboard calculada a partir da base persistida.
- Bloco de Notas com criação, edição, exclusão e sincronização local.
- DNA, Pendências e Timeline preservados no contexto do Assistente.
- Contexto automático e geral considera todas as cooperativas.
- Backup local tolera pastas opcionais e inclui uploads.
- Preparacao para hospedagem online com login opcional, dados persistentes
  via AMX_DATA_DIR e download de backup pela area Admin.
- Produtos disponíveis no cadastro:
  - Central 1.0
  - Central 2.0
  - Central 3.0
  - Digital Coop
  - Contas Digitais
  - Treinamento
  - Palestra
  - PDG
  - Outros

Mantido sem alteração estrutural:
- Cooperativas
- Bloco de Notas
- DNA
- Pendências
- Timeline
- Assistente AMX
- Backup local

Como usar:
1. Extraia o ZIP.
2. Abra o .env.
3. Cole sua chave OpenAI.
4. Execute o arquivo INICIAR-AMX-HUB-9-0-3-STABLE.bat.
5. Acesse http://localhost:3000.

Hospedagem online:
1. Mantenha a OPENAI_API_KEY somente no .env do servidor.
2. Configure AMX_AUTH_ENABLED=true.
3. Defina AMX_ADMIN_USER, AMX_ADMIN_PASSWORD e AMX_SESSION_SECRET.
4. Configure AMX_DATA_DIR para uma pasta persistente do provedor.
5. Em ambiente HTTPS, use AMX_COOKIE_SECURE=true.

Deploy Oracle Cloud:
- Use os arquivos em deploy/oracle.
- Leia deploy/oracle/README-ORACLE-CLOUD.txt antes de publicar.

Deploy Render Free:
- Use render.yaml e os arquivos em deploy/render.
- Leia deploy/render/README-RENDER.txt antes de publicar.
- Indicado para piloto online sem cartao; faca backups frequentes.
