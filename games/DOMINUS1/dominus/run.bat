:menu
@echo off
cls
echo.
echo Press 1 for Dominus w/ SoundBlaster
echo Press 2 for Dominus w/ MT-32
echo Press 3 for Dominus w/ Sound Canvas
echo Press 4 for Dominus w/ CD Audio
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto CDA
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd dominus2
del CAT.OPT
del DOM.OPT
del INSTALL.OPT
copy .\sb16\*.*
cls
@call DOM
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd dominus2
del CAT.OPT
del DOM.OPT
del INSTALL.OPT
copy .\mt32\*.*
cls
@call DOM
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cd dominus2
del CAT.OPT
del DOM.OPT
del INSTALL.OPT
copy .\sc55\*.*
cls
@call DOM
goto quit

:CDA
CONFIG -set "mididevice=fluidsynth"
cd dominus
cls
call dom
goto quit

:quit
exit