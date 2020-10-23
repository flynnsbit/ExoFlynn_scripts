:menu
@echo off
cls
echo.
echo Press 1 for Air Power: Battle in the Skies CD w/ SoundBlaster
echo Press 2 for Air Power: Battle in the Skies CD w/ MT-32
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd airpower
copy .\sb16\*.* .\
cls
@airpower
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd airpower
copy .\mt32\*.* .\
cls
@airpower
goto quit

:quit
exit