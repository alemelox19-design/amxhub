@echo off
cd /d "%~dp0"
title AMX HUB 9.0.3 STABLE
echo ====================================
echo AMX HUB 9.0.3 STABLE
echo ====================================
if not exist .env (
  echo ERRO: Arquivo .env nao encontrado.
  pause
  exit
)
if not exist node_modules (
  echo Instalando dependencias...
  call npm.cmd install
  if errorlevel 1 (
    echo ERRO: Nao foi possivel instalar as dependencias.
    pause
    exit /b 1
  )
)
start "" http://localhost:3000
call npm.cmd run dev
pause
