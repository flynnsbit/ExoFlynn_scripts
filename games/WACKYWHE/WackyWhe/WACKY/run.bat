:menu
@echo off
cls
echo.
echo Press 1 for Wacky Wheels w/ SoundBlaster
echo Press 2 for Wacky Wheels w/ Sound Canvas
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto SC55
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del WACKY.CFG
copy .\sb16\*.*
cls
@WW
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del WACKY.CFG
copy .\sc55\*.*
cls
@WW
goto quit

:quit
exit