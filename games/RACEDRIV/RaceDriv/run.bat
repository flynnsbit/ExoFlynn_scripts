:menu
@echo off
cls
echo.
echo Press 1 for Race Drivin' w/ Tandy
echo Press 2 for Race Drivin' w/ SoundBlaster
echo Press 2 for Race Drivin' w/ MT-32
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto MT32
if errorlevel = 2 goto SB16
if errorlevel = 1 goto TANDY

:TANDY
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@racevga /t
goto quit

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@racevga /s
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
@racevga /r
goto quit

:quit
exit