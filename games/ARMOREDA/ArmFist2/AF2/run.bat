:menu
@echo off
cls
echo.
echo Press 1 for Armored Fist 2 w/ SoundBlaster
echo Press 2 for Armored Fist 2 w/ Sound Canvas
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto SC55
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@AF2
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
copy .\sc55\*.* .\
cls
@AF2
goto quit

:quit
exit