@echo off
setlocal enabledelayedexpansion

REM Inicializando variáveis
set /a dias=0
set /a horas=0
set /a minutos=0
set /a segundos=0

REM Solicitando o nome do projeto
set /p projeto=NOME DO PROJETO: 

:loop
REM Limpando a tela
cls

REM Exibindo o tempo decorrido e o nome do projeto
echo Projeto: %projeto%
echo Tempo decorrido: !dias! Dias, !horas! Horas, !minutos! Minutos, !segundos! Segundos

REM Incrementando os segundos
set /a segundos+=1

REM Verificando e ajustando os segundos, minutos, horas e dias
if !segundos! equ 60 (
    set /a segundos=0
    set /a minutos+=1
)
if !minutos! equ 60 (
    set /a minutos=0
    set /a horas+=1
)
if !horas! equ 24 (
    set /a horas=0
    set /a dias+=1
)

REM Aguardando 1 segundo
ping 127.0.0.1 -n 2 > nul

REM Voltando para o início do loop
goto loop
