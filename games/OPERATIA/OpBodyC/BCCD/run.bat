:menu
@echo off
cls
echo.
echo Press 1 for Operation Body Count w/ SoundBlaster
echo Press 2 for Operation Body Count w/ CD Audio
echo Press 3 to Quit
echo.
echo The CD Audio option has no sound in the intro.
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto CDA
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cls
@call BC
goto quit

:CDA
CONFIG -set "mididevice=default"
cls
@call BC CDMUSIC
goto quit

:quit
exit