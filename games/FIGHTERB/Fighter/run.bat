:menu
@echo off
cls
echo.
echo Press 1 for Fighter Bomber
echo Press 2 for Fighter Bomber Advanced Mission Disk
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cls
@call adv
goto quit

:MT32
CONFIG -set "mididevice=default"
cls
@call bomb
goto quit

:quit
exit