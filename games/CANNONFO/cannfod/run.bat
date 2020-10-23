:menu
@echo off
cls
echo.
echo Press 1 for Cannon Fodder w/ SoundBlaster
echo Press 2 for Cannon Fodder w/ MT-32
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd CANNONF.CD
copy .\sb16\*.* .\
d:
cls
@call cannon
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd CANNONF.CD
copy .\mt32\*.* .\
d:
cls
@call cannon
goto quit

:quit
exit