:menu
@echo off
cls
echo.
echo Press 1 for Judge Dredd Pinball w/ SoundBlaster
echo Press 2 for Judge Dredd Pinball w/ MT-32
echo Press 3 for Judge Dredd Pinball w/ Sound Canvas
echo Press 4 for Judge Dredd Pinball w/ CD Audio
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
copy .\midi\*.* .\
cd ..
cd setsound
copy .\sb16\*.* .\
cd ..
cd dredd
cls
@call go
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\midi\*.* .\
cd ..
cd setsound
copy .\mt32\*.* .\
cd ..
cd dredd
cls
@call go
goto quit

:SC55
CONFIG -set "mididevice=fluidsynth"
copy .\midi\*.* .\
cd ..
cd setsound
copy .\sc55\*.* .\
cd ..
cd dredd
cls
@call go
goto quit

:CDA
CONFIG -set "mididevice=default"
copy .\cda\*.* .\
cd ..
cd setsound
copy .\sb16\*.* .\
cd ..
cd dredd
cls
@call go
goto quit

:quit
exit