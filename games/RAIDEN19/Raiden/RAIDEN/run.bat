:menu
@echo off
cls
echo.
echo Press 1 for Raiden w/ SoundBlaster
echo Press 2 for Raiden w/ MT-32
echo Press 3 for Raiden w/ CD Audio
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto CDA
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@RAIDEN
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
@RAIDEN
goto quit

:CDA
CONFIG -set "mididevice=fluidsynth"
copy .\cda\*.* .\
cls
@RAIDEN
goto quit

:quit
exit