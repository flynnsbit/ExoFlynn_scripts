:menu
@echo off
cls
echo.
echo Press 1 for Hoverforce w/ PC Speaker
echo Press 2 for Hoverforce w/ SoundBlaster
echo Press 3 for Hoverforce w/ MT-32
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto MT32
if errorlevel = 2 goto SB16
if errorlevel = 1 goto CMS

:CMS
CONFIG -set "sbtype=gb"
CONFIG -set "mpu401=none"
cls
@V
goto quit

:SB16
CONFIG -set "sbtype=sb16"
CONFIG -set "mididevice=default"
CONFIG -set "mpu401=none"
cls
@V
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cls
@V
goto quit

:quit
exit