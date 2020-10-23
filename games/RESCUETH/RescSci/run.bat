:menu
@echo off
cls
echo.
echo Press 1 for Rescue the Scientists w/ SoundBlaster
echo Press 2 for Rescue the Scientists w/ MT-32
echo Press 3 for Rescue the Scientists w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd rescue
copy .\sb16\*.* .\
cd ..
d:
cls
@call rs
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd rescue
copy .\mt32\*.* .\
cd ..
d:
cls
@call rs
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cd rescue
copy .\sc55\*.* .\
cd ..
d:
cls
@call rs
goto quit

:quit
exit