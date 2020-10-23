echo off
 
if exist tlrb3.cfg goto frontend
setup

:frontend
call checkcd.bat
checkmem
if errorlevel 1 goto end2

:bb
set DOS4GVM=VIRTUALSIZE#32768
bb

:end
set DOS4GVM=
mode co80

:end2
