:menu
@echo off
cls
echo.
echo Press 1 for Fragile Alliance w/ SoundBlaster
echo Press 2 for Fragile Alliance w/ MT-32
echo Press 3 for Fragile Alliance w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del CONFIG.INI
copy .\sb16\*.*
cls
@FRAGILE
goto quit

:MT32
CONFIG -set "mididevice=mt32"
del CONFIG.INI
copy .\mt32\*.*
cls
@FRAGILE
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del CONFIG.INI
copy .\sc55\*.*
cls
@FRAGILE
goto quit

:quit
exit