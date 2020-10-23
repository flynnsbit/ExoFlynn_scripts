:menu
@echo off
cls
echo.
echo Press 1 for Days of Thunder w/ PC Speaker
echo Press 2 for Days of Thunder w/ SoundBlaster
echo Press 3 for Days of Thunder w/ MT-32
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto MT32
if errorlevel = 2 goto SB16
if errorlevel = 1 goto PCS

:SB16
CONFIG -set "mididevice=default"
cls
@DOT /a
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cls
@DOT /r
goto quit

:PCS
CONFIG -set "mididevice=default"
cls
@DOT
goto quit

:quit
exit