:menu
@echo off
goto mt32
cls
echo.
echo Press 1 for Tornado w/ SoundBlaster
echo Press 2 for Tornado w/ MT-32
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
d:
cls
@call go
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
d:
cls
@call go
goto quit

:quit
exit