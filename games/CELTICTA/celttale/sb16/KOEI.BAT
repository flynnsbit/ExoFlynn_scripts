@echo off
cd xm
sbdrv
bgmdrv
grpdrv
checksys.exe
if errorlevel 1 goto EXIT
:OPENING
opening.exe
:STARTUP
startup.exe	   
if errorlevel 2 goto GAME
if errorlevel 0 goto EXIT
:GAME
ct.exe
if errorlevel 4 goto ENDING
if errorlevel 3 goto STARTUP
if errorlevel 2 goto GAME
if errorlevel 0 goto EXIT
:ENDING
ending.exe
:EXIT
grpdrv
bgmdrv all
cd ..

echo on

