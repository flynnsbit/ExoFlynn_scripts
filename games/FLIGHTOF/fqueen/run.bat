:menu
@echo off
cls
echo.
echo Press 1 for Flight of the Amazon Queen w/ SoundBlaster
echo Press 2 for Flight of the Amazon Queen w/ MT-32
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
cd queen.sav
copy .\sb16\*.* .\
cd ..
d:
cls
@call AQ
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd queen.sav
copy .\mt32\*.* .\
cd ..
d:
cls
@call AQ
goto quit

:quit
exit