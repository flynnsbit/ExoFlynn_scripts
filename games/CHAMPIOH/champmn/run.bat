:menu
@echo off
cls
echo.
echo Press 1 for Championship Manager w/ SoundBlaster
echo Press 2 for Championship Manager w/ MT-32
echo Press 3 to Quit
echo.
echo You will need the codes listed in the extras to bypass the copy protection.
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cls
@europe a
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cls
@europe r
goto quit

:quit
exit