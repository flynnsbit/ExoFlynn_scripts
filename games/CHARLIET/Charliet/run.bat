:menu
@echo off
cls
echo.
echo Press 1 for Charlie the Duck w/ Adlib
echo Press 2 for Charlie the Duck w/ Sound Canvas
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto SC55
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cls
@charlie -m
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cls
@charlie
goto quit

:quit
exit