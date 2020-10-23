:menu
@echo off
cls
echo.
echo Press 1 for The Discoverers w/ SoundBlaster
echo Press 2 for The Discoverers w/ Sound Canvas
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto SC55
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del KA.CNF
copy .\sb16\*.*
cls
@call DISCOVER
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del KA.CNF
copy .\sc55\*.*
cls
@call DISCOVER
goto quit

:quit
exit