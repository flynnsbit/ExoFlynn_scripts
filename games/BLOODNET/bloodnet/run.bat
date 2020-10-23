:menu
@echo off
cls
echo.
echo Press 1 for BloodNet w/ SoundBlaster
echo Press 2 for BloodNet w/ MT-32
echo Press 3 for BloodNet w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del BLOODNET.CFG
copy .\sb16\*.*
cls
@BLOODNET
goto quit

:MT32
CONFIG -set "mididevice=mt32"
del BLOODNET.CFG
copy .\mt32\*.*
cls
@BLOODNET
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del BLOODNET.CFG
copy .\sc55\*.*
cls
@BLOODNET
goto quit

:quit
exit