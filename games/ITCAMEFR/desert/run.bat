:menu
@echo off
cls
echo.
echo Press 1 for It Came from the Desert w/ SoundBlaster
echo Press 2 for It Came from the Desert w/ MT-32
echo Press 3 to Quit
echo.
echo Note: MT-32 Music does not have Sound Effects in this game.
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@call desert
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
@call desert
goto quit

:quit
exit