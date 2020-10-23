:menu
@echo off
cls
echo.
echo Press 1 for Police Quest 2: The Vengeance w/ SoundBlaster
echo Press 2 for Police Quest 2: The Vengeance w/ MT32
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB

:SB
CONFIG -set "mididevice=default"
@sierra sesource.cfg
cls
goto quit

:MT32
CONFIG -set "mididevice=mt32"
@sierra mesource.cfg
cls
goto quit

:quit
exit