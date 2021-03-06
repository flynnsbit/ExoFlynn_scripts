:menu
@echo off
cls
echo.
echo Press 1 for Comanche CD /w SoundBlaster
echo Press 2 for Comanche CD /w MT-32
echo Press 3 for Comanche CD /w Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del COMANCHE.CFG
copy .\sb16\*.*
cls
@COMANCHE
goto quit

:MT32
CONFIG -set "mididevice=mt32"
del COMANCHE.CFG
copy .\mt32\*.*
cls
@COMANCHE
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del COMANCHE.CFG
copy .\sc55\*.*
cls
@COMANCHE
goto quit

:quit
exit