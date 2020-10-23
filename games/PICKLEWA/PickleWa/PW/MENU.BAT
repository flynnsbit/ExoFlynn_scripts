@echo off
:again
menumr %1
if errorlevel 99 goto quit
cd..
goto again
:quit

