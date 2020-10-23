:menu
@echo off
cls
echo.
echo Press 1 for Inferno w/ SoundBlaster
echo Press 2 for Inferno w/ MT-32
echo Press 3 for Inferno w/ Sound Canvas
echo Press 4 for Inferno w/ CD Audio
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto CDA
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@call INFERNO
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
@call INFERNO
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
copy .\sc55\*.* .\
cls
@call INFERNO
goto quit

:CDA
CONFIG -set "mididevice=default"
copy .\CD\*.* .\
cls
@call INFERNO
goto quit

:quit
exit