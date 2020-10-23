:menu
@echo off
cls
echo.
echo Press 1 for Flying Corps Gold w/ SoundBlaster
echo Press 2 for Flying Corps Gold w/ MT-32
echo Press 3 for Flying Corps Gold w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd miles
copy .\sb16\*.* .\
cd ..
cls
@fly
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd miles
copy .\mt32\*.* .\
cd ..
cls
@fly
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cd miles
copy .\sc55\*.* .\
cd ..
cls
@fly
goto quit

:quit
exit