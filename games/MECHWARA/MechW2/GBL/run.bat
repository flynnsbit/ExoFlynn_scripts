:menu
@echo off
cls
echo.
echo Press 1 for MechWarrior 2: Ghost Bear's Legacy w/ SoundBlaster
echo Press 2 for MechWarrior 2: Ghost Bear's Legacy w/ MT32
echo Press 3 for MechWarrior 2: Ghost Bear's Legacy w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd SND
del MDI.INI
copy .\sb16\*.*
cd ..
cls
@GBL
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd SND
del MDI.INI
copy .\mt32\*.*
cd ..
cls
@GBL
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cd SND
del MDI.INI
copy .\sc55\*.*
cd ..
cls
@GBL
goto quit

:quit
exit