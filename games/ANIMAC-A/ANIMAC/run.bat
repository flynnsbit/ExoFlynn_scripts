:menu
@echo off
cls
echo.
echo Press 1 for ANIMAC (easy version)
echo Press 2 for ANIMAC
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
cd animac
cls
@animac
goto quit

:MT32
cls
@animac
goto quit

:quit
exit