:menu
@echo off
cls
echo.
echo Press 1 for Bumpy's Arcade Fantasy w/ SoundBlaster
echo Press 2 for Bumpy's Arcade Fantasy w/ MT-32
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cls
echo.
echo After launching the game choose F7 for Adlib
echo.
pause
@bumpy
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cls
echo.
echo After launching the game choose F8 for MT32
echo.
pause
@bumpy
goto quit

:quit
exit