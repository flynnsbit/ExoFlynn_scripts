:menu
@echo off
cls
echo.
echo Press 1 for NFL Quarterback Club 96 w/ SoundBlaster (No Music)
echo Press 2 for NFL Quarterback Club 96 w/ MT-32
echo Press 3 for NFL Quarterback Club 96 w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd drivers
copy .\sb16\*.* .\
cd ..
cls
@QBC96 -U
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd drivers
copy .\mt32\*.* .\
cd ..
cls
@QBC96 -U
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cd drivers
copy .\sc55\*.* .\
cd ..
cls
@QBC96 -U
goto quit

:quit
exit