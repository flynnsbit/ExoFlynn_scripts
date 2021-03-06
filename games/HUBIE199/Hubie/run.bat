:menu
@echo off
cls
echo.
echo Press 1 for Hubie w/ SoundBlaster
echo Press 2 for Hubie w/ Sound Canvas
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto SC55
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd hubie
copy .\sb16\*.* .\
cls
@HUBIE
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cd hubie
copy .\sc55\*.* .\
cls
@HUBIE
goto quit

:quit
exit