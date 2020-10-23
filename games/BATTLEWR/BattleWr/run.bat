:menu
@echo off
cls
echo.
echo Press 1 for Battle Wrath w/ SoundBlaster
echo Press 2 for Battle Wrath w/ Gravis Ultrasound
echo Press 3 for Battle Wrath w/ MT-32
echo Press 4 for Battle Wrath w/ Sound Canvas
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto SC55
if errorlevel = 3 goto MT32
if errorlevel = 2 goto GUS
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@call WRATH
goto quit

:GUS
CONFIG -set "mididevice=default"
copy .\gus\*.* .\
cd ULTRASND
ULTRAMID
cd ..
cls
@call WRATH
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
@call WRATH
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
copy .\sc55\*.* .\
cls
@call WRATH
goto quit

:quit
exit