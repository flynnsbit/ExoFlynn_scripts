@echo off
:loop
menu 1
if errorlevel 1 goto exit
main
if errorlevel 1 goto exit
goto loop
:exit
