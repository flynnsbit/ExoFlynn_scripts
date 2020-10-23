:menu
@echo off
cls
echo.
echo Press 1 for Power F1 w/ SoundBlaster
echo Press 2 for Power F1 w/ MT-32
echo Press 3 for Power F1 w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd sound
copy .\sb16\*.* .\
cd ..
cls
@F1
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd sound
copy .\mt32\*.* .\
cd ..
cls
@F1
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cd sound
copy .\sc55\*.* .\
cd ..
cls
@F1
goto quit

:quit
exit