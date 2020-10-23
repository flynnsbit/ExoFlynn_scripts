:menu
@echo off
cls
echo.
echo Press 1 for Nicky 2 w/ SoundBlaster
echo Press 2 for Nicky 2 w/ MT-32
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mpu401=none"
CONFIG -set "mididevice=default"
cls
@N2CRK
goto quit

:MT32
CONFIG -set "sbtype=none"
CONFIG -set "mididevice=mt32"
cls
@N2CRK
goto quit

:quit
exit