:menu
@echo off
cls
echo.
echo Press 1 for Xenocide w/ Game Blaster
echo Press 2 for Xenocide w/ SoundBlaster
echo Press 3 for Xenocide w/ MT-32
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto MT32
if errorlevel = 2 goto SB16
if errorlevel = 1 goto CMS

:SB16
CONFIG -set "mididevice=default"
cls
@call XENO A
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cls
@call XENO R
goto quit

:CMS
CONFIG -set "mididevice=default"
CONFIG -set "sbtype=gb"
cls
@call XENO CMS
goto quit

:quit
exit