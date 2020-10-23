:menu
@echo off
cls
echo.
echo Press 1 for Terra Nova: Strike Force Centauri w/ SoundBlaster
echo Press 2 for Terra Nova: Strike Force Centauri w/ Sound Canvas
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto SC55
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del TN.CFG
copy .\sb16\*.*
cls
@call TN
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del TN.CFG
copy .\sc55\*.*
cls
@call TN
goto quit

:quit
exit