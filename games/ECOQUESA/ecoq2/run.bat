:menu
@echo off
cls
echo.
echo Press 1 for EcoQuest 2: Lost Secret of the Rainforest w/ SoundBlaster
echo Press 2 for EcoQuest 2: Lost Secret of the Rainforest w/ MT-32
echo Press 3 for EcoQuest 2: Lost Secret of the Rainforest w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del RESOURCE.CFG
copy .\sb16\*.*
cls
@SIERRA
goto quit

:MT32
CONFIG -set "mididevice=mt32"
del RESOURCE.CFG
copy .\mt32\*.*
cls
@SIERRA
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del RESOURCE.CFG
copy .\sc55\*.*
cls
@SIERRA
goto quit

:quit
exit