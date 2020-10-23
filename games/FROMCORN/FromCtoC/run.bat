:menu
@echo off
cls
echo.
echo Press 1 for From Corner to Corner (1992)
echo Press 2 for From Corner to Corner (1993)
echo Press 3 to Quit
echo.
echo Note: 1993 version requires using included copy protection sheet.
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cd 92
cls
corner
cd ..
goto menu

:bio2
cd 93
cls
corner57
cd ..
goto menu

:quit
exit