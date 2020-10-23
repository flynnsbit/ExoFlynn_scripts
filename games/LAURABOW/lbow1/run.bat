:menu
@echo off
cls
echo.
echo Press 1 for Laura Bow 1: The Colonel's Bequest w/ Tandy Sound
echo Press 2 for Laura Bow 1: The Colonel's Bequest w/ SoundBlaster
echo Press 3 for Laura Bow 1: The Colonel's Bequest w/ MT32
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto MT32
if errorlevel = 2 goto SB16
if errorlevel = 1 goto Tandy

:SB16
CONFIG -set "mididevice=default"
cls
@sierra sesource.cfg
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cls
@sierra mesource.cfg
goto quit

:tandy
CONFIG -set "mididevice=default"
cls
@sierra tesource.cfg
goto quit

:quit
exit