:menu
@echo off
cls
echo.
echo Press 1 for Pickle Wars w/ SoundBlaster
echo Press 2 for Pickle Wars w/ MT-32
echo Press 3 for Pickle Wars w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd pickle
copy .\sb16\*.* .\
cd ..
cls
@call PICKLE
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd pickle
copy .\mt32\*.* .\
cd ..
cls
@call PICKLE
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cd pickle
copy .\sc55\*.* .\
cd ..
cls
@call PICKLE
goto quit

:quit
exit