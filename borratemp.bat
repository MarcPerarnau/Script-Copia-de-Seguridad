@echo off
Rem borratemp.bat
Rem Autor: Marc Liang Perarnau 
Rem Fecha: DATE
Cls

setlocal enabledelayedexpansion

set "ORIGIN="
set "DESTINI="
set "LOGDIR="

if not exist "%DESTINI%" mkdir "%DESTINI%"

if not exist "%LOGDIR%" mkdir "%LOGDIR%"

for /f "tokens=2 delims==." %%I in ('wmic os get localdatetime /value') do set FECHA=%%I

set "FECHA_LOG=%FECHA:~0,4%-%FECHA:~4,2%-%FECHA:~6,2%_%FECHA:~8,2%-%FECHA:~10,2%"

set "LOGFILE=%LOGDIR%\%FECHA_LOG%.log"

(echo Inicio: %DATE% %TIME%) > "%LOGFILE%"

robocopy "%ORIGIN%" "%DESTINI%" /E /XO /LOG+:"%LOGFILE%" /NP /TEE

if %ERRORLEVEL% LSS 8 (
    echo Copia exitosa. >> "%LOGFILE%"
) else (
    echo Copia fallida. >> "%LOGFILE%"
)

echo Fin: %DATE% %TIME% >> "%LOGFILE%"

exit /b

