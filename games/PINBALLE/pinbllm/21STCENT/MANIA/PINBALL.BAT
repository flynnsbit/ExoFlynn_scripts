@echo off
cls

if %1 = s goto sound
if %1 = S goto sound

if exist "sound.cfg" goto exit

:sound
call setsound

:exit
pm.com
