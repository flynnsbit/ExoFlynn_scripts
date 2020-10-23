:menu
@echo off
cls
echo.
echo Press 1 for Shadow of Yserbius w/ SoundBlaster
echo Press 2 for Shadow of Yserbius w/ MT-32
echo Press 3 for Shadow of Yserbius w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del lsci.cfg
copy .\sb16\*.*
cd YSERBIUS
cls
@YSERBIUS
goto quit

:MT32
CONFIG -set "mididevice=mt32"
del lsci.cfg
copy .\mt32\*.*
cd YSERBIUS
cls
@YSERBIUS
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del lsci.cfg
copy .\sc55\*.*
cd YSERBIUS
cls
@YSERBIUS
goto quit

:quit
exit