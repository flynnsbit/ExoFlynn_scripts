:menu
@echo off
cls
echo.
echo Press 1 to launch Jack Nicklaus Golf Signature Edition w/ Tandy
echo Press 2 to launch Jack Nicklaus Golf Signature Edition w/ SoundBlaster 16
echo Press 3 to launch Jack Nicklaus Golf Signature Edition w/ MT-32
echo Press 4 to launch the Course Designer w/ Tandy
echo Press 5 to launch the Course Designer w/ SoundBlaster 16
echo Press 6 to launch the Course Designer w/ MT-32
echo Press 7 to Quit
echo.
choice /c:1234567 /n

if errorlevel = 7 goto end
if errorlevel = 6 goto dMT32
if errorlevel = 5 goto dSB16
if errorlevel = 4 goto dTANDY
if errorlevel = 3 goto MT32
if errorlevel = 2 goto SB16
if errorlevel = 1 goto TANDY

:TANDY
CONFIG -set "mididevice=default"
cd NICKLAUS
copy .\tandy\*.* .\
cls
@golf
goto quit

:SB16
CONFIG -set "mididevice=default"
cd NICKLAUS
copy .\sb16\*.* .\
cls
@golf
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd NICKLAUS
copy .\mt32\*.* .\
cls
@golf
goto quit

:dTANDY
CONFIG -set "mididevice=default"
cd NICKLAUS
copy .\tandy\*.* .\
cls
@DESIGN
goto quit

:dSB16
CONFIG -set "mididevice=default"
cd NICKLAUS
copy .\sb16\*.* .\
cls
@DESIGN
goto quit

:dMT32
CONFIG -set "mididevice=mt32"
cd NICKLAUS
copy .\mt32\*.* .\
cls
@DESIGN
goto quit

:end