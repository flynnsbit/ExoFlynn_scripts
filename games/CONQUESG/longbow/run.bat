:menu
@echo off
cls
echo.
echo Press 1 for Conquests of the Longbow w/ SoundBlaster
echo Press 2 for Conquests of the Longbow w/ MT32
echo Press 3 for Conquests of the Longbow w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB

:SB
CONFIG -set "mididevice=default"
@SCIDHUV sesource.cfg
cls
goto quit

:MT32
CONFIG -set "mididevice=mt32"
@SCIDHUV mesource.cfg
cls
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
@SCIDHUV gesource.cfg
cls
goto quit

:quit
exit