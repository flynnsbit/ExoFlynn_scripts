:menu
@echo off
cls
echo.
echo Press 1 for Realms of Chaos w/ SoundBlaster
echo Press 2 for Realms of Chaos w/ Sound Canvas
echo Press 3 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto SC55
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del ROC.CFG
copy .\sb16\*.*
cls
@ROC
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del ROC.CFG
copy .\sc55\*.*
cls
@ROC
goto quit

:quit
exit