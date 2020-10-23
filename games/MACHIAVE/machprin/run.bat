:menu
@echo off
cls
echo.
echo Press 1 for Machiavelli the Prince w/ SoundBlaster
echo Press 2 for Machiavelli the Prince w/ Sound Canvas
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto SC55
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del JVSOUND.CFG
copy .\sb16\*.*
cls
@PRINCE
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del JVSOUND.CFG
copy .\sc55\*.*
cls
@PRINCE
goto quit

:quit
exit