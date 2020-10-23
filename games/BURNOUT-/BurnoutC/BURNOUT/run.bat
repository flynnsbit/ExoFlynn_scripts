:menu
@echo off
cls
echo.
echo Press 1 for Burnout Championship Drag Racing w/ SoundBlaster
echo Press 2 for Burnout Championship Drag Racing w/ MT-32
echo Press 3 for Burnout Championship Drag Racing w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd SNDDRV
copy .\sb16\*.* .\
cd ..
cls
@BURNOUT
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd SNDDRV
copy .\mt32\*.* .\
cd ..
cls
@BURNOUT
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cd SNDDRV
copy .\sc55\*.* .\
cd ..
cls
@BURNOUT
goto quit

:quit
exit