:menu
@echo off
cls
echo.
echo Press 1 for Bubble Bobble also featuring Rainbow Islands w/ Gravis Ultrasound
echo Press 2 for Bubble Bobble also featuring Rainbow Islands w/ SoundBlaster
echo Press 3 for Bubble Bobble also featuring Rainbow Islands w/ MT-32
echo Press 4 for Bubble Bobble also featuring Rainbow Islands w/ Sound Canvas
echo Press 5 to Quit
echo.
echo Note: Sound settings only affect Rainbow Islands games.
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto SC55
if errorlevel = 3 goto MT32
if errorlevel = 2 goto SB16
if errorlevel = 1 goto GUS

:GUS
CONFIG -set "mididevice=default"
cd game\miles
copy .\gus\*.* .\
cd ..
cd ..
cls
@call BUBBLE
goto quit

:SB16
CONFIG -set "mididevice=default"
cd game\miles
copy .\sb16\*.* .\
cd ..
cd ..
cls
@call BUBBLE
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd game\miles
copy .\mt32\*.* .\
cd ..
cd ..
cls
@call BUBBLE
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cd game\miles
copy .\sc55\*.* .\
cd ..
cd ..
cls
@call BUBBLE
goto quit

:quit
exit