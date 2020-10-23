:menu
@echo off
cls
echo.
echo Press 1 for Sid & Al's Incredible Toons w/ SoundBlaster
echo Press 2 for Sid & Al's Incredible Toons w/ MT32
echo Press 3 for Sid & Al's Incredible Toons w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del resource.cfg
ren sesource.cfg resource.cfg
cls
@toons 
goto quit

:MT32
CONFIG -set "mididevice=mt32"
del resource.cfg
ren mesource.cfg resource.cfg
cls
@toons
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del resource.cfg
ren gesource.cfg resource.cfg
cls
@toons
goto quit

:quit
exit