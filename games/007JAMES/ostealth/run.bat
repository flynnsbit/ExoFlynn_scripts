:menu
@echo off
cls
echo.
echo Press 1 for James Bond 007: The Stealth Affair w/ SoundBlaster
echo Press 2 for James Bond 007: The Stealth Affair w/ MT32
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB

:SB
@copy DELPHINE.SB DELPHINE.CFG
cls
@loadgame
cls

:MT32
@copy DELPHINE.M32 DELPHINE.CFG
cls
@loadgame
cls

:quit
exit