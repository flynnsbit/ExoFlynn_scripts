:menu
@echo off
cls
echo.
echo Press 1 for Elite Plus w/ SoundBlaster
echo Press 2 for Elite Plus w/ MT-32
echo Press 3 to Quit
echo.
echo This sets DOSBox to the proper midi device. Please choose the same
echo sound output when the game starts.
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cls
@ELITE
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cls
@ELITE
goto quit

:quit
exit