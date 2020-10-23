:menu
@echo off
cls
echo.
echo Press 1 for Sandwarriors w/ SoundBlaster
echo Press 2 for Sandwarriors w/ Sound Canvas
echo Press 3 for Sandwarriors w/ CD Audio
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto CDA
if errorlevel = 2 goto SC55
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@SW
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
copy .\sc55\*.* .\
cls
@SW
goto quit

:CDA
CONFIG -set "mididevice=default"
copy .\cda\*.* .\
cls
@SW
goto quit

:quit
exit