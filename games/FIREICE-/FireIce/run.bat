:menu
@echo off
cls
echo.
echo Press 1 for Fire & Ice w/ SoundBlaster
echo Press 2 for Fire & Ice w/ MT-32
echo Press 3 to Quit
echo.
echo This sets the proper mididevice in DOSBox. Please select
echo the matching sound type when the game starts.
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
CONFIG -set "mpu401=none"
cls
@FIRE
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cls
@FIRE
goto quit

:quit
exit