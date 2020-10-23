:menu
@echo off
cls
echo.
echo Press 1 for Crossfire PCJR Cartridge Version
echo Press 2 for Crossfire PCJR Disk Version
echo Press 3 to Quit
echo.
echo Disk version has better sound, but is harder.
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto DISK
if errorlevel = 1 goto CART

:CART
CONFIG -set "cycles=300"
cls
boot CROSFIRE.JRC
goto quit

:DISK
CONFIG -set "cycles=150"
cls
boot CRSFIRE.IMG
goto quit

:quit
exit