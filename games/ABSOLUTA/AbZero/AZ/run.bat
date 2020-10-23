:menu
@echo off
cls
echo.
echo Press 1 for Absolute Zero w/ SoundBlaster
echo Press 2 for Absolute Zero w/ MT-32
echo Press 3 for Absolute Zero w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd setsound
copy .\sb16\*.* .\
cd ..
copy .\setsound\sb16\*.* .\
cls
@call AZ
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd setsound
copy .\mt32\*.* .\
cd ..
copy .\setsound\mt32\*.* .\
cls
@call AZ
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cd setsound
copy .\sc55\*.* .\
cd ..
copy .\setsound\sc55\*.* .\
cls
@call AZ
goto quit

:quit
exit