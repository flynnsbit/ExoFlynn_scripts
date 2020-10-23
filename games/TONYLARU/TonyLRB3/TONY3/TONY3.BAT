@echo off
if exist *.swp del *.swp 
if exist tlrb3.cfg goto frontend
setup

:frontend
call checkcd.bat
checkmem
if errorlevel 1 goto end2

:main
set DOS4GVM=SWAPINC#1024
main
if errorlevel 8 goto end
if errorlevel 6 goto draft
if errorlevel 3 goto bb
goto end

:draft
set DOS4GVM=SWAPINC#1024
draft
if errorlevel 8 goto end
if errorlevel 1 goto main
goto end

:bb
set DOS4GVM=VIRTUALSIZE#32768 SWAPINC#1024
bb
if errorlevel 8 goto end
if errorlevel 1 goto main
goto end

:end
set DOS4GVM=
mode co80

:end2
