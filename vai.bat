@echo off
rem echo Adicionando...
rem git add .
rem echo Comitando... 
rem git commit -m "musicas"
rem echo Empurrando para a nuvem...
rem git push
echo ----------------------------------------
@echo off
setlocal enabledelayedexpansion

rem Conta o número total de arquivos .zip
set total=0
for %%F in (*.zip) do (
    set /a total+=1
)

rem Inicializa o contador
set count=0

echo Adicionando arquivos .zip ao repositório...

rem Itera sobre cada arquivo .zip
for %%F in (*.zip) do (
    set /a count+=1
    echo Adicionando %%F !count! de !total!...
    git add "%%F"
    
    echo Comitando %%F...
    git commit -m "Adicionando %%F"
    
    echo Empurrando %%F para a nuvem...
    git push
    
    echo %%F enviado com sucesso! Progresso: !count! de !total!
)

echo Todos os arquivos .zip foram enviados para o GitHub!

