:menu
@echo off
cls
echo.
echo Press 1 for Golden Eagle w/ Adlib
echo Press 2 for Golden Eagle w/ MT-32
echo Press 3 to Quit
echo.
echo Adlib is problematic in this game. It is scratchy
echo and there are nmo sound effects.
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
CONFIG -set "mpu401=none"
cls
@EAGLE
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cls
@EAGLE
goto quit

:quit
exit