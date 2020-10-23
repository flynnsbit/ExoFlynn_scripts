:menu
@echo off
cls
echo.
echo Press 1 for Don't Go Alone w/ Game Blaster
echo Press 2 for Don't Go Alone w/ SoundBlaster
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto SB16
if errorlevel = 1 goto GB

:SB16
CONFIG -set "mididevice=default"
sound
cls
@ALONE
goto quit

:GB
CONFIG -set "mididevice=default"
CONFIG -set "sbtype=GB"
cls
@ALONE
goto quit

:quit
exit