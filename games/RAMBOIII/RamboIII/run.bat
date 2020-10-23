:menu
@echo off
cls
echo.
echo Press 1 for Rambo III w/ Tandy
echo Press 2 for Rambo III w/ Game Blaster
echo Press 3 for Rambo III w/ Adlib
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto ADLIB
if errorlevel = 2 goto GB
if errorlevel = 1 goto TANDY

:TANDY
CONFIG -set "mididevice=default"
CONFIG -set "sbtype=none"
copy .\TANDY\*.* .\
cls
echo.
echo The game will ask you to choose the sound type and then claim
echo it doesn't detect Tandy. Just click yes anyways and it will work.
echo.
pause
cls
@rambo
goto quit

:GB
CONFIG -set "mididevice=default"
CONFIG -set "sbtype=gb"
CONFIG -set "oplmode=cms"
copy .\GB\*.* .\
cls
@rambo
goto quit

:ADLIB
CONFIG -set "mididevice=default"
CONFIG -set "sbtype=sb16"
copy .\ADLIB\*.* .\
cls
@rambo
goto quit

:quit
exit