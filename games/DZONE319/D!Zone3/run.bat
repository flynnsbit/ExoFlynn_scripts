:menu
@echo off
cls
echo.
echo Press 1 for D!Zone 3 w/ SoundBlaster
echo Press 2 for D!Zone 3 w/ Sound Canvas
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto SC55
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd DOOM
del DEFAULT.CFG
copy .\sb16\*.*
cd ..
cd DOOM2
del DEFAULT.CFG
copy .\sb16\*.*
cd ..
cd d!
del D!DOOM.CFG
copy .\sb16\*.*
cls
@D!
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cd DOOM
del DEFAULT.CFG
copy .\sc55\*.*
cd ..
cd DOOM2
del DEFAULT.CFG
copy .\sc55\*.*
cd ..
cd d!
del D!DOOM.CFG
copy .\sc55\*.*
cls
@D!
goto quit

:quit
exit