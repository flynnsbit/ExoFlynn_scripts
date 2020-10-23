@echo off
echo off
cpbefor
if errorlevel 1 GOTO herc
CP2150
goto end
:herc
msherc>NUL
CP2150 1
:end
