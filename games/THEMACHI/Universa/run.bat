:menu
@echo off
cls
echo.
echo Press 1 for Universal Warrior w/ SoundBlaster
echo Press 2 for Universal Warrior w/ Gravis Ultrasound
echo Press 2 for Universal Warrior w/ MT-32
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto MT32
if errorlevel = 2 goto GUS
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd MACH
copy .\sb16\*.* .\
cls
@call MACHINES
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd MACH
copy .\mt32\*.* .\
cls
@call MACHINES
goto quit

:GUS
CONFIG -set "mididevice=default"
CD ULTRASND
ULTRAMID
cd ..
CD MACH
copy .\GUS\*.* .\
cls
@call MACHINES
goto quit

:quit
exit