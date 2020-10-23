:menu
@echo off
cls
echo.
echo Press 1 for Nerves of Steel w/ SoundBlaster
echo Press 2 for Nerves of Steel w/ MT-32
echo Press 3 for Nerves of Steel w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd engine
copy .\sb16\*.* .\
cd ..
cls
@nos
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd engine
copy .\mt32\*.* .\
cd ..
cls
@nos
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cd engine
copy .\sc55\*.* .\
cd ..
cls
@nos
goto quit

:quit
exit