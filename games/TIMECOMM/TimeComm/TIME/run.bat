:menu
@echo off
cls
echo.
echo Press 1 for Time Commando w/ SoundBlaster
echo Press 2 for Time Commando w/ Sound Canvas
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto SC55
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd DRIVERS
del MDI.INI
copy .\sb16\*.*
cd ..
cls
@TIMECO
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cd DRIVERS
del MDI.INI
copy .\sc55\*.*
cd ..
cls
@TIMECO
goto quit

:quit
exit