@echo off
set DOS4G=quiet
ins.exe
if ERRORLEVEL 1 GOTO fail
call setup
:fail

