:menu
@echo off
cls
echo.
echo Press 1 for The Terminator: Future Shock w/ SoundBlaster
echo Press 2 for The Terminator: Future Shock w/ MT-32
echo Press 3 for The Terminator: Future Shock w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del HMISET.CFG
copy .\sb16\*.*
cls
@SHOCK
goto quit

:MT32
CONFIG -set "mididevice=mt32"
del HMISET.CFG
copy .\mt32\*.*
cls
@SHOCK
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del HMISET.CFG
copy .\sc55\*.*
cls
@SHOCK
goto quit

:quit
exit