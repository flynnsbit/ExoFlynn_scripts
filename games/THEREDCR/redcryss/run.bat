:menu
@echo off
cls
echo.
echo Press 1 for The Red Crystal w/ SoundBlaster
echo Press 2 for The Red Crystal w/ MT-32
echo Press 3 for The Red Crystal w/ Sound Canvas
echo Press 4 for The Red Crystal Tutor
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto TUTOR
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cd sound
copy .\sb16\*.* .\
cd ..
cls
@call rc
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cd sound
copy .\mt32\*.* .\
cd ..
cls
@call rc
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
copy .\sc55\*.* .\
cls
@call rc
goto quit

:TUTOR
CONFIG -set "mididevice=fluidsynth"
copy .\sc55\*.* .\
cd sound
copy .\sc55\*.* .\
cd ..
cls
@tutor
goto quit

:quit
exit