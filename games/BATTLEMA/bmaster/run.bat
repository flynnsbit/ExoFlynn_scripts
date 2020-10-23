:menu
@echo off
cls
echo.
echo Press 1 for Battle Master w/ Tandy
echo Press 2 for Battle Master w/ SoundBlaster
echo Press 3 for Battle Master w/ MT-32
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto MT32
if errorlevel = 2 goto SB16
if errorlevel = 1 goto TANDY

:SB16
CONFIG -set "mididevice=default"
cls
@bm /s
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cls
@bm /m
goto quit

:TANDY
cls
@bm /t
goto quit

:quit
exit