:menu
@echo off
cls
echo.
echo Press 1 for A.D Cop Overseas Mission w/ SoundBlaster
echo Press 2 for A.D Cop Overseas Mission w/ MT-32
echo Press 3 for A.D Cop Overseas Mission w/ Sound Canvas
echo Press 4 for A.D Cop Overseas Mission w/ CD Audio
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
@call play
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
@call play
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
copy .\sc55\*.* .\
cls
@call play
goto quit

:CDA
CONFIG -set "mididevice=default"
copy .\CDA\*.* .\
cls
@call play
goto quit

:quit
exit