:menu
@echo off
cls
echo.
echo Press 1 for F1 Manager w/ SoundBlaster
echo Press 2 for F1 Manager w/ MT-32
echo Press 3 for F1 Manager w/ Sound Canvas
echo Press 4 for F1 Manager w/ CD Audio
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto CDA
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd drivers
copy .\sb16\*.* .\
cd ..
copy .\midi\*.* .\
cls
@f1
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd drivers
copy .\mt32\*.* .\
cd ..
copy .\midi\*.* .\
cls
@f1
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
cd drivers
copy .\sc55\*.* .\
cd ..
copy .\midi\*.* .\
cls
@f1
goto quit

:CDA
CONFIG -set "mididevice=default"
cd drivers
copy .\sb16\*.* .\
cd ..
copy .\cda\*.* .\
cls
@f1
goto quit

:quit
exit