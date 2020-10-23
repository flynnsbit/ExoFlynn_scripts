:menu
@echo off
cls
echo.
echo Press 1 for Constructor w/ SoundBlaster
echo Press 2 for Constructor w/ MT-32
echo Press 3 for Constructor w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd SETTINGS
del SETSND.CFG
copy .\sb16\*.*
cd ..
cls
game
rem @MOUSEX 20 10 GAME.EXE
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd SETTINGS
del SETSND.CFG
copy .\mt32\*.*
cd ..
cls
game
rem @MOUSEX 20 10 GAME.EXE
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cd SETTINGS
del SETSND.CFG
copy .\sc55\*.*
cd ..
cls
game
rem @MOUSEX 20 10 GAME.EXE
goto quit

:quit
exit