:menu
@echo off
cls
echo.
echo Press 1 for H!Zone w/ SoundBlaster
echo Press 2 for H!Zone w/ Sound Canvas
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto SC55
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd HERETIC
del D!.CFG
copy .\sb16\*.*
cd ..
cd HEXEN
del D!.CFG
copy .\sb16\*.*
cd ..
cd d!
cls
@D!
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cd HERETIC
del D!.CFG
copy .\sc55\*.*
cd ..
cd HEXEN
del D!.CFG
copy .\sc55\*.*
cd ..
cd d!
cls
@D!
goto quit

:quit
exit