:menu
@echo off
cls
echo.
echo Press 1 for Final Doom w/ SoundBlaster
echo Press 2 for Final Doom w/ Sound Canvas
echo Press 3 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto SC55
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd TNT
del DEFAULT.CFG
copy .\sb16\*.*
cd ..
cd PLUTONIA
del DEFAULT.CFG
copy .\sb16\*.*
cd ..
cls
goto game

:SC55
CONFIG -set "mididevice=fluidsynth"
cd TNT
del DEFAULT.CFG
copy .\sc55\*.*
cd ..
cd PLUTONIA
del DEFAULT.CFG
copy .\sc55\*.*
cd ..
cls
goto game

:game
@echo off 
cls
echo.
echo Press 1 for Final Doom: Plutonia Experiment
echo Press 2 for Final Doom: TNT: Evilution
echo Press 3 to Quit
echo.
choice /c:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto tnt
if errorlevel = 1 goto plut

:plut
cd plutonia
cls
@doom2
goto quit

:tnt
cd tnt
cls
@DOOM2
goto quit

:quit
exit