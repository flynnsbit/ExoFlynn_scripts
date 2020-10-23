echo off
startup
:loop
init
mainbase
if errorlevel 255 goto loop
init
goto loop

