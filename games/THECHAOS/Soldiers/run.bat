:menu
@echo off
cls
echo.
echo Press 1 for Soldiers of Fortune w/ SoundBlaster
echo Press 2 for Soldiers of Fortune w/ MT-32
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd CD_CHAOS
cd ..
copy .\sb16\*.* .\
d:
cls
@chaos
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd CD_CHAOS
copy .\mt32\*.* .\
cd ..
d:
cls
@chaos
goto quit

:quit
exit