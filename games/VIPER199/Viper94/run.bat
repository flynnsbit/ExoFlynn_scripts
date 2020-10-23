:menu
@echo off
cls
echo.
echo Press 1 for Viper, the original 1994 release
echo Press 2 for Viper, the 2004 updated release
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB

:SB
cd 1995
cls
@viper
cls
goto quit

:MT32
cls
viper
cls
goto quit

:quit
exit