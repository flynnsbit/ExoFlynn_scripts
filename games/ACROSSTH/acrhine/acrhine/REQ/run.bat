:menu
@echo off
cls
echo.
echo Press 1 for Across the Rhine w/ SoundBlaster
echo Press 2 for Across the Rhine w/ MT-32
echo Press 3 for Across the Rhine w/ Sound Canvas
echo Press 4 to Quit
echo.
echo During game, press Ctrl-F4 if asked to switch CD's.
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del INSTALL.CFG
copy .\sb16\*.*
cls
@ATR
goto quit

:MT32
CONFIG -set "mididevice=mt32"
del INSTALL.CFG
copy .\mt32\*.*
cls
@ATR
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del INSTALL.CFG
copy .\sc55\*.*
cls
@ATR
goto quit

:quit
exit