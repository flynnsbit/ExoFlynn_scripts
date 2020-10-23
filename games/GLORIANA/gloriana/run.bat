:menu
@echo off
cls
echo.
echo Press 1 for Gloriana w/ SoundBlaster
echo Press 2 for Gloriana w/ Sound Canvas
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto SC55
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd ELISABET
del JVSOUND.CFG
copy .\sb16\*.*
cd ..
cls
@call GLORIANA
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cd ELISABET
del JVSOUND.CFG
copy .\sc55\*.*
cd ..
cls
@call GLORIANA
goto quit

:quit
exit