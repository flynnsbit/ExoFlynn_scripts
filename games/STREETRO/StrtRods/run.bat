:menu
@echo off
cls
echo.
echo Press 1 for Street Rod 
echo Press 2 for Street Rod Data Disk
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
cls
@sr
goto quit

:MT32
cd datadisk
cls
@srse
goto quit

:quit
exit