@echo off
cls
sbfmdrv > nul
menu.exe ia.fli 0
:start
if errorlevel -1 goto end
if errorlevel 1 legend.exe
if errorlevel 9 menu.exe ia.fli 2
goto start
:end
sbfmdrv /u > nul
