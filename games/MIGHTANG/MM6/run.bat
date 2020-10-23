:menu
@echo off
cls
echo.
echo Press Ctrl-F4 to switch CD's when prompted.
echo.
echo Press 1 for Might and Magic: World of Xeen w/ SoundBlaster
echo Press 2 for Might and Magic: World of Xeen w/ MT32
echo Press 3 for Might and Magic: World of Xeen w/ Sound Canvas
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set mididevice=default
cd world
del XEEN.CFG
copy .\sb16\*.*
cls
@xeen
goto quit
cls

:MT32
CONFIG -set mididevice=mt32
cd world
del XEEN.CFG
copy .\mt32\*.*
cls
@XEEN
goto quit
cls

:SC55
CONFIG -set mididevice=fluidsynth
cd world
del XEEN.CFG
copy .\sc55\*.*
cls
@XEEN
goto quit
cls

:quit
exit