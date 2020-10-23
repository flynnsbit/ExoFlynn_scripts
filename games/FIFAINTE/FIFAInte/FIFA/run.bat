:menu
@echo off
cls
echo.
echo Press 1 for FIFA International Soccer w/ SoundBlaster
echo Press 2 for FIFA International Soccer w/ MT-32
echo Press 3 for FIFA International Soccer w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
cd MUSIC
CONFIG -set "mididevice=default"
cd ..
del FIFA.CFG
copy .\sb16\*.*
cls
@FIFA
goto quit

:MT32
cd MUSIC
CONFIG -set "mididevice=mt32"
cd ..
del FIFA.CFG
copy .\mt32\*.*
cls
@FIFA
goto quit

:SC55
cd MUSIC
CONFIG -set "mididevice=fluidsynth"
cd ..
del FIFA.CFG
copy .\sc55\*.*
cls
@FIFA
goto quit

:quit
exit