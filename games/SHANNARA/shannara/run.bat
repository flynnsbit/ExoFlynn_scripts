:menu
@echo off
cls
echo.
echo Press 1 for Shannara w/ SoundBlaster
echo Press 2 for Shannara w/ MT-32
echo Press 3 for Shannara w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del MDI.INI
copy .\sb16\*.*
cls
@SHANNARA
goto quit

:MT32
CONFIG -set "mididevice=mt32"
del MDI.INI
copy .\mt32\*.*
cls
@SHANNARA
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del MDI.INI
copy .\sc55\*.*
cls
@SHANNARA
goto quit

:quit
exit