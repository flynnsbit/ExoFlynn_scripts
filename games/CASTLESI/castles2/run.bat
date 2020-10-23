:menu
@echo off
cls
echo.
echo Press 1 for Castles 2: Siege & Conquest Floppy w/ SoundBlaster
echo Press 2 for Castles 2: Siege & Conquest Floppy w/ MT-32
echo Press 3 for Castles 2: Siege & Conquest Floppy w/ Sound Canvas
echo Press 4 for Castles 2: Siege & Conquest CD
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto CD
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd floppy
copy .\sb16\*.* .\
cls
@CASTLES2
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd floppy
copy .\mt32\*.* .\
cls
@CASTLES2
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cd floppy
copy .\sc55\*.* .\
cls
@CASTLES2
goto quit

:CD
CONFIG -set "mididevice=default"
cls
@call c2cd
goto quit

:quit
exit