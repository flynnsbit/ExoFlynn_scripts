:menu
@echo off
cls
echo.
echo Press 1 for Space Crusade w/ SoundBlaster
echo Press 2 for Space Crusade w/ MT-32
echo Press 3 for Space Crusade w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del SPACE.CFG
copy .\sb16\*.*
cls
@echo off
echo.
echo With this game, DOSBox will not capture the mouse
echo when clicking on the DOSBox window,
echo to capture the mouse, press Ctrl+F10.
echo.
pause
cls
@CRUSADE
goto quit

:MT32
CONFIG -set "mididevice=mt32"
del SPACE.CFG
copy .\mt32\*.*
cls
@echo off
echo.
echo With this game, DOSBox will not capture the mouse
echo when clicking on the DOSBox window,
echo to capture the mouse, press Ctrl+F10.
echo.
pause
cls
@CRUSADE
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del SPACE.CFG
copy .\sc55\*.*
cls
@echo off
echo.
echo With this game, DOSBox will not capture the mouse
echo when clicking on the DOSBox window,
echo to capture the mouse, press Ctrl+F10.
echo.
pause
cls
@CRUSADE
goto quit

:quit
exit