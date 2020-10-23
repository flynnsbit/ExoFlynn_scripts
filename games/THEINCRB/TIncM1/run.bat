:menu
@echo off
cls
echo.
echo Press 1 for The Incredible Machine w/ SoundBlaster
echo Press 2 for The Incredible Machine w/ MT32
echo Press 3 for The Incredible Machine w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
copy sesource.cfg resource.cfg
cls
@tim_k
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy mesource.cfg resource.cfg
cls
@tim_k
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
copy gesource.cfg resource.cfg
cls
@tim_k
goto quit

:quit
exit