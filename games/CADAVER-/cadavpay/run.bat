:menu
@echo off
cls
echo.
echo Press 1 for Cadaver: The Payoff w/ SoundBlaster
echo Press 2 for Cadaver: The Payoff w/ MT32
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB

:SB

CONFIG -set "mididevice=default"
@copy CADAVER.SB CADAVER.INI
cls
CADAVER
cls
goto quit

:MT32

CONFIG -set "mididevice=mt32"
@copy CADAVER.M32 CADAVER.INI
cls
CADAVER
cls
goto quit

:quit
exit