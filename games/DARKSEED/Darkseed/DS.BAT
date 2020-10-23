@echo off
echo Dark Seed version 1.51
if "%1" == "/m" goto menu
if "%1" == "/M" goto menu
start I
if errorlevel 1 goto end
goto :loop
:menu
start %1
if errorlevel 1 goto end
:loop
tos
if errorlevel 2 goto end
start
if errorlevel 1 goto end
goto loop
:end
