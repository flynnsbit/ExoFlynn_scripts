:menu
@echo off
cls
echo.
echo Press 1 for L.A. Law: The Computer Game w/ SoundBlaster
echo Press 2 for L.A. Law: The Computer Game w/ MT-32
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
CONFIG -set "mpu401=none"
cd LALAWA
cls
@call LALAW
goto quit

:MT32
CONFIG -set "sbtype=none"
CONFIG -set "mididevice=mt32"
CD LALAWR
cls
@call LALAW
goto quit

:quit
exit