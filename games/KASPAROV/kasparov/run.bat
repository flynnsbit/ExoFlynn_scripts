:menu
@echo off
cls
echo.
echo Press 1 for Kasparov's Gambit w/ SoundBlaster
echo Press 2 for Kasparov's Gambit w/ MT-32
echo Press 3 for Kasparov's Gambit w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd load
copy .\sb16\*.* .\
cd ..
cls
@gambit
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd load
copy .\mt32\*.* .\
cd ..
cls
@gambit
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cd load
copy .\sc55\*.* .\
cd ..
cls
@gambit
goto quit

:quit
exit