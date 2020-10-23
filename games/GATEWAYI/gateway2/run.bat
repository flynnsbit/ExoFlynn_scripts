:menu
@echo off
cls
echo.
echo Press 1 for Gateway 2: Homeworld w/ SoundBlaster
echo Press 2 for Gateway 2: Homeworld w/ MT32
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB

:SB
CONFIG -set "mididevice=default"
cls
HOME BLASTER 7 220
goto quit

:MT32
CONFIG -set "mididevice=mt32"
legmpu
cls
HOME BLASTER 7 220 MT32 2 330
goto quit

:quit
exit