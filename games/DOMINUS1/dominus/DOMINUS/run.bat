:menu
@echo off
cls
echo.
echo Press 1 for Dominus w/ SoundBlaster
echo Press 2 for Dominus w/ MT-32
echo Press 3 for Dominus w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del CAT.OPT
del DOM.OPT
del INSTALL.OPT
copy .\sb16\*.*
cls
@DOM
goto quit

:MT32
CONFIG -set "mididevice=mt32"
del CAT.OPT
del DOM.OPT
del INSTALL.OPT
copy .\mt32\*.*
cls
@DOM
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del CAT.OPT
del DOM.OPT
del INSTALL.OPT
copy .\sc55\*.*
cls
@DOM
goto quit

:quit
exit