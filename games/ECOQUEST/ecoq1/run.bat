:menu
@echo off
cls
echo.
echo Press 1 for EcoQuest: The Search for Cetus w/ SoundBlaster
echo Press 2 for EcoQuest: The Search for Cetus w/ MT32
echo Press 3 for EcoQuest: The Search for Cetus w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB

:SB
CONFIG -set "mididevice=default"
cd ECO
copy .\sb16\RESOURCE.CFG .\
@sierra
CD..
goto quit
cls

:MT32
CONFIG -set "mididevice=mt32"
cd ECO
copy .\mt32\RESOURCE.CFG .\
@sierra
CD..
goto quit
cls

:SC
CONFIG -set "mididevice=fluidsynth"
cd ECO
copy .\sc55\RESOURCE.CFG .\
@sierra
CD..
goto quit
cls

:quit
exit