:menu
@echo off
cls
echo.
echo Press 1 for Veil of Darkness w/ Tandy
echo Press 2 for Veil of Darkness w/ SoundBlaster
echo Press 3 for Veil of Darkness w/ MT-32
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto MT32
if errorlevel = 2 goto SB16
if errorlevel = 1 goto TANDY

:TANDY
CONFIG -set "mididevice=default"
copy .\tandy\*.* .\
cls
@VEIL
goto quit

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@VEIL
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
@VEIL
goto quit

:quit
exit