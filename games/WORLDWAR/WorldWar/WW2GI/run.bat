:menu
@echo off
cls
echo.
echo Press 1 World War II GI for w/ SoundBlaster
echo Press 2 World War II GI for w/ Sound Canvas
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto SC55
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del WW2GI.CFG
copy .\sb16\*.*
cls
@WW2GI
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del WW2GI.CFG
copy .\sc55\*.*
cls
@WW2GI
goto quit

:quit
exit