:menu
@echo off
cls
echo.
echo Press 1 for The Immortal w/ SoundBlaster
echo Press 2 for The Immortal w/ MT32
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB

:SB
CONFIG -set "mididevice=default"
IMMORTAL.EXE
cls
goto quit

:MT32
CONFIG -set "mididevice=mt32"
IMMORTAL.EXE ROLAND
cls
goto quit

:quit
exit