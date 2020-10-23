:menu
@echo off
cls
echo.
echo Press 1 for Deluxe Trivial Pursuit w/ Tandy
echo Press 2 for Deluxe Trivial Pursuit w/ SoundBlaster
echo Press 3 for Deluxe Trivial Pursuit w/ MT-32
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto MT32
if errorlevel = 2 goto SB16
if errorlevel = 1 goto TANDY

:TANDY
CONFIG -set "sbtype=none"
CONFIG -set "mpu401=none
cls
@TP
goto quit

:SB16
CONFIG -set "mididevice=default"
cls
@TP
goto quit

:MT32
CONFIG -set "sbtype=none"
CONFIG -set "mididevice=mt32"
cls
@TP
goto quit

:quit
exit