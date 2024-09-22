@echo off
setlocal enabledelayedexpansion

rem Conta o número total de pastas
set total=0
for /d %%D in (*) do (
    set /a total+=1
)

rem Inicializa o contador
set count=0

for /d %%D in (*) do (
    rem Incrementa o contador
    set /a count+=1
    rem Exibe o progresso
    echo Compactando %%D !count! de !total!...
    cd %%D
    tar -a -c -f ../%%D.zip *
    rem tar -a -c -f "../%%D.zip" "%%D\*"
    cd ..
)

echo Compactação concluída!
