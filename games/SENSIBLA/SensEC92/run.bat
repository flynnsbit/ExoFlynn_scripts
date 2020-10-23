:menu
@echo off
cls
echo.
echo Press 1 for Sensible Soccer: European Champions: '92-'93 w/ Sound Blaster
echo Press 2 for Sensible Soccer: European Champions: '92-'93 w/ MT-32
echo Press 3 for Sensible Soccer: European Champions: '92-'93 w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del SETUP.DAT
copy .\sb16\*.*
cls
@SENSIBLE
goto quit

:MT32
CONFIG -set "mididevice=mt32"
del SETUP.DAT
copy .\mt32\*.*
cls
@SENSIBLE
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del SETUP.DAT
copy .\sc55\*.*
cls
@SENSIBLE
goto quit

:quit
exit