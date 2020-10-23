:menu
@echo off
cls
echo.
echo Press 1 for Zone 66 w/ SoundBlaster
echo Press 2 for Zone 66 w/ Gravis Ultrasound
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cls
@ZONE66 /s
goto quit

:MT32
CONFIG -set "mididevice=default"
cls
@ZONE66 /u
goto quit

:quit
exit