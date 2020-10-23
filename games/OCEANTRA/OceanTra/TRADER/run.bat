:menu
@echo off
cls
echo.
echo Press 1 for Ocean Trader w/ SoundBlaster
echo Press 2 for Ocean Trader w/ CD Audio
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto CDA
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
trader
goto quit

:CDA
CONFIG -set "mididevice=default"
copy .\cda\*.* .\
cls
@trader
goto quit

:quit
exit