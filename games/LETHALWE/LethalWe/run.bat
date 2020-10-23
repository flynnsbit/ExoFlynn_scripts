:menu
@echo off
cls
echo.
echo Press 1 for Lethal Weapon w/ SoundBlaster
echo Press 2 for Lethal Weapon w/ MT-32
echo Press 4 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cls
@fixmusic +A
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cls
@fixmusic +R
goto quit

:quit
exit