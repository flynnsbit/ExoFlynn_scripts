:menu
@echo off
cls
echo.
echo Press 1 for Exterminator w/ SoundBlaster
echo Press 2 for Exterminator w/ MT-32
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
CONFIG -set "sbtype=sbpro1"
copy .\sb16\*.* .\
cls
@EXTERM
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
@EXTERM
goto quit

:quit
exit