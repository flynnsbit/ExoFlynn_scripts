:menu
@echo off
cls
echo.
echo Press 1 for Mixed-Up Mother Goose w/ Game Blaster
echo Press 2 for Mixed-Up Mother Goose w/ SoundBlaster
echo Press 3 for Mixed-Up Mother Goose w/ MT32
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto MT32
if errorlevel = 2 goto SB16
if errorlevel = 1 goto GB

:SB16
CONFIG -set "mididevice=default"
cls
@sierra sesource.cfg
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cls
@sierra mesource.cfg
goto quit

:GB
CONFIG -set "mididevice=default"
CONFIG -set "sbtype=gb"
cls
@sierra cesource.cfg
goto quit

:quit
exit