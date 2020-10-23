:menu
@echo off
cls
echo.
echo Press 1 for Halls of the Dead: Faery Tale Adventure II w/ SoundBlaster
echo Press 2 for Halls of the Dead: Faery Tale Adventure II w/ MT-32
echo Press 3 for Halls of the Dead: Faery Tale Adventure II w/ Sound Canvas
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
@call START
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd drivers
copy .\mt32\*.* .\
cd ..
cls
@call START
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cd drivers
copy .\sc55\*.* .\
cd ..
cls
@call START
goto quit

:quit
exit