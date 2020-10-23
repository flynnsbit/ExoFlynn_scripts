:menu
@echo off
cls
echo.
echo Press 1 for Buck Rogers: Matrix Cubed w/ SoundBlaster
echo Press 2 for Buck Rogers: Matrix Cubed w/ MT-32
echo Press 3 to Quit
echo.
echo Note: If you have Buck Rogers: Countdown to Doom installed you may
echo transfer savegame files or characters not currently in a party into
echo Matrix Cubed via the game interface.
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@start
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
@start
goto quit

:quit
exit