@echo off
cls
if exist "sound.cfg" goto exit

call setsound

:exit
pf.exe
