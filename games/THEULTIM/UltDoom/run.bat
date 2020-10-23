:menu
@echo off
cls
echo.
echo Press 1 for The Ultimate Doom w/ SoundBlaster
echo Press 2 for The Ultimate Doom w/ Sound Canvas
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto SC55
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del DEFAULT.CFG
copy .\sb16\*.*
cls
@DOOM
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del DEFAULT.CFG
copy .\sc55\*.*
cls
@DOOM
goto quit

:quit
exit