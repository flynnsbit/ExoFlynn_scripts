:menu
@echo off
cls
echo.
echo Press 1 for Descent Anniversary w/ SoundBlaster
echo Press 2 for Descent Anniversary w/ SoundBlaster Hi-res
echo Press 3 for Descent Anniversary w/ Sound Canvas
echo Press 4 for Descent Anniversary w/ Sound Canvas Hi-res
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto SC55hi
if errorlevel = 3 goto SC55
if errorlevel = 2 goto SB16hi
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
del descent.cfg
copy .\sb16\*.*
cls
@descent
goto quit

:SB16hi
CONFIG -set "mididevice=default"
del descent.cfg
copy .\sb16\*.*
cls
@descent -640x480
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
del descent.cfg
copy .\sc55\*.*
cls
@descent
goto quit

:SC55hi
CONFIG -set "mididevice=fluidsynth"
del descent.cfg
copy .\sc55\*.*
cls
@descent -640x480
goto quit

:quit
exit