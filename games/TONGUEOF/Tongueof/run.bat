:menu
@echo off
cls
echo.
echo Press 1 for Tongue of the Fatman w/ Tandy
echo Press 2 for Tongue of the Fatman w/ SoundBlaster
echo Press 3 for Tongue of the Fatman w/ MT-32
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto MT32
if errorlevel = 2 goto SB16
if errorlevel = 1 goto TANDY

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
goto select

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
goto select

:TANDY
CONFIG -set "mididevice=default"
copy .\tandy\*.* .\
cls
goto select

:select
cls
echo.
echo Press 1 for a 1 Player Game
echo Press 2 for a 2 Player Game
echo.
choice /C:12 /N Please Choose:

if errorlevel = 2 goto P2
if errorlevel = 1 goto P1

:P1
cls
@fatman
goto quit

:P2
cls
@fatman /two
goto quit


:quit
exit