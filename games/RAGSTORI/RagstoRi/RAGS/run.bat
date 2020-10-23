:menu
@echo off
cls
echo.
echo Press 1 for Rags to Riches: The Financial Market Simulator w/ SoundBlaster
echo Press 2 for Rags to Riches: The Financial Market Simulator w/ MT-32
echo Press 3 for Rags to Riches: The Financial Market Simulator w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del INTRPLAY.CFG
copy .\sb16\*.*
cls
@RAGS
goto quit

:MT32
CONFIG -set "mididevice=mt32"
del INTRPLAY.CFG
copy .\mt32\*.*
cls
@RAGS
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del INTRPLAY.CFG
copy .\sc55\*.*
cls
@RAGS
goto quit

:quit
exit