:menu
@echo off
cls
echo.
echo Press 1 for Hexen: Deathkings of the Dark Citadel w/ SoundBlaster
echo Press 2 for Hexen: Deathkings of the Dark Citadel w/ Sound Canvas
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto SC55
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd HEXEN
del HEXEN.CFG
copy .\sb16\*.*
cd ..
cd HEXENDK
cls
@HEXENDK
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cd HEXEN
del HEXEN.CFG
copy .\sc55\*.*
cd ..
cd HEXENDK
cls
@HEXENDK
goto quit

:quit
exit