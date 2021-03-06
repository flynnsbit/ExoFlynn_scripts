:menu
@echo off
cls
echo.
echo Press 1 for Hoyle Official Book of Games: Volume 3 w/ SoundBlaster
echo Press 2 for Hoyle Official Book of Games: Volume 3 w/ MT32
echo Press 3 for Hoyle Official Book of Games: Volume 3 w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cls
@SCIDHUV sesource.cfg
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cls
@SCIDHUV mesource.cfg
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cls
@SCIDHUV gesource.cfg
goto quit

:quit
exit