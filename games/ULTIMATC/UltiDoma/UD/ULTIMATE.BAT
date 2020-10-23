@echo off

domain.exe
if errorlevel 1 goto fin
mode co80

:fin
echo on
