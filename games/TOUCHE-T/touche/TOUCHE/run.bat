:menu
@echo off
cls
echo.
echo Press 1 for Touche: The Adventures of the Fifth Musketeer w/ SoundBlaster
echo Press 2 for Touche: The Adventures of the Fifth Musketeer w/ MT-32
echo Press 3 for Touche: The Adventures of the Fifth Musketeer w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@call TOUCHE
goto quit

:MT32
mixer mt32 400
mixer sb 50
CONFIG -set "mpu401=uart"
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
@call TOUCHE
goto quit

:SC55
CONFIG -set "mpu401=uart"
CONFIG -set "mididevice=fluidsynth"
copy .\sc55\*.* .\
cls
@call TOUCHE
goto quit

:quit
exit