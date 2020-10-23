:menu
@echo off
cls
echo.
echo Press 1 for Stratego w/ SoundBlaster
echo Press 2 for Stratego w/ MT-32
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
@STRATEGO
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cls
@STRATEGO
goto quit

:quit
exit