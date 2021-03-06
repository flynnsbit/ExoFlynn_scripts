:menu
@echo off
cls
echo.
echo Press 1 for Dark Universe w/ SoundBlaster
echo Press 2 for Dark Universe w/ Sound Canvas
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto SC55
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd du.cd
copy .\sb16\*.* .\
cd ..
d:
cls
@call start
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cd du.cd
copy .\sc55\*.* .\
cd ..
d:
cls
@call start
goto quit

:quit
exit