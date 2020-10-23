@echo off

if "%1"=="off" goto turnoff
if "%1"=="OFF" goto turnoff
if "%1"=="Off" goto turnoff

set DOS4Gvm=@data\blind.vmc
goto done

:turnoff
set DOS4GVM=

:done

