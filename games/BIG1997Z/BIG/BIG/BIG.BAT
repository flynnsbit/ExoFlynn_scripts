@echo off
cdcheck.exe
if errorlevel==1 goto error
lock.com > nul
main.exe
unlock.com > nul
goto exit
:error
echo Brak kompaktu w odtwarzaczu!
:exit
