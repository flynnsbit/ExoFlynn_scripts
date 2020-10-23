:menu
@echo off
cls
echo.
echo Press 1 for Magic Carpet 2: The Netherworlds w/ SoundBlaster
echo Press 2 for Magic Carpet 2: The Netherworlds w/ MT32
echo Press 3 for Magic Carpet 2: The Netherworlds w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd NETHERW
cd SOUND
del MDI.INI
copy .\sb16\*.*
cd ..
cd ..
cls
echo.
echo Pressing "r" during gameplay will turn on Hi-Res mode, however the game will run
echo incredibly slow unless you increase the speed of DOSBox by pressing CTRL-F12.
echo.
pause
D:
@NETHERW
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd NETHERW
cd SOUND
del MDI.INI
copy .\mt32\*.*
cd ..
cd ..
cls
echo.
echo Pressing "r" during gameplay will turn on Hi-Res mode, however the game will run
echo incredibly slow unless you increase the speed of DOSBox by pressing CTRL-F12.
echo.
pause
D:
@NETHERW
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cd NETHERW
cd SOUND
del MDI.INI
copy .\sc55\*.*
cd ..
cd ..
cls
echo.
echo Pressing "r" during gameplay will turn on Hi-Res mode, however the game will run
echo incredibly slow unless you increase the speed of DOSBox by pressing CTRL-F12.
echo.
pause
D:
@NETHERW
goto quit

:quit
exit