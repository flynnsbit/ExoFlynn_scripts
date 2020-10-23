:menu
@echo off
cls
echo.
echo Press 1 for Loopz w/ SoundBlaster
echo Press 2 for Loopz w/ MT-32
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cls
@loopz -sa
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cls
@loopz -sr
goto quit

:quit
exit