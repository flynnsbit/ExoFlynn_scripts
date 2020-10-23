:menu
@echo off
cls
echo.
echo Press 1 for Hired Guns w/ SoundBlaster
echo Press 2 for Hired Guns w/ MT-32
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
SET SOUND=C:\SB16\
cd sb16
cls
@call HG
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd mt32
cls
@call HG
goto quit

:quit
exit