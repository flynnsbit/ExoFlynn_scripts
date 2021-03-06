:menu
@echo off
cls
echo.
echo Press 1 for Might and Magic: Swords of Xeen w/ SoundBlaster
echo Press 2 for Might and Magic: Swords of Xeen w/ MT32
echo Press 3 for Might and Magic: Swords of Xeen w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set mididevice=default
del XEEN.CFG
copy .\sb16\*.*
cls
@swords
goto quit
cls

:MT32
CONFIG -set mididevice=mt32
del XEEN.CFG
copy .\mt32\*.*
cls
@swords
goto quit
cls

:SC55
CONFIG -set mididevice=fluidsynth
del XEEN.CFG
copy .\sc55\*.*
cls
@swords
goto quit
cls

:quit
exit