echo off

if exist *.swp del *.swp 
if exist first.tmp del first.tmp
if exist last.tmp del last.tmp

if exist oldtime.cfg goto frontend
setup

:frontend
echo Old Time Baseball ver 1.00
call checkcd.bat
checkmem %1
if errorlevel 1 goto end2

:main
set DOS4GVM=SWAPINC#1024
main %1  
if errorlevel 8 goto end
if errorlevel 6 goto draft
if errorlevel 3 goto bb
goto end

:draft 
set DOS4GVM=SWAPINC#1024
draft %1 
if errorlevel 8 goto end
if errorlevel 1 goto main
goto end

:bb
set DOS4GVM=VIRTUALSIZE#32768 SWAPINC#1024
bb %1 
if errorlevel 8 goto end
if errorlevel 1 goto main
goto end

:end
set DOS4GVM=
mode co80

:end2
