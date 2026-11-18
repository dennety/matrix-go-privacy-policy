@echo off
chcp 65001 > nul
cls
echo =======================================================
echo    DEPLOY GITHUB PAGES - MATRIX GO PRIVACY POLICY
echo =======================================================
echo.
echo Este script publica a Politica de Privacidade no seu GitHub Pages.
echo.
set /p REPO_URL="Cole a URL do seu repositorio GitHub (ex: https://github.com/SEU-USER/matrix-go-privacy-policy.git): "

if "%REPO_URL%"=="" (
    echo [ERRO] Nenhuma URL informada. Operacao cancelada.
    pause
    exit /b
)

echo.
echo [1/4] Inicializando Git...
git init -b main

echo [2/4] Adicionando arquivos...
git add .

echo [3/4] Criando commit...
git commit -m "feat: publish official privacy policy for Chrome Web Store"

echo [4/4] Conectando ao GitHub e enviando...
git remote remove origin 2>nul
git remote add origin %REPO_URL%
git branch -M main
git push -u origin main --force

echo.
echo =======================================================
echo   ARQUIVOS ENVIADOS COM SUCESSO!
echo =======================================================
echo Agora acesse o GitHub:
echo 1. Va em Settings ^> Pages
echo 2. Em 'Branch', selecione 'main' e pasta '/ (root)'
echo 3. Clique em 'Save'.
echo.
echo O seu link estara ativo em:
echo https://SEU-USUARIO.github.io/matrix-go-privacy-policy/
echo =======================================================
pause
