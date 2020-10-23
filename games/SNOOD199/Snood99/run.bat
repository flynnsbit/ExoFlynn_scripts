:menu
@echo off
cls
echo.
echo Press 1 for Snood 2.0
echo Press 2 for Snood 2.1
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
cd 2.0
snood
cd ..
goto menu

:bio2
cls
cd 2.1
snood
cd ..
goto menu


:quit
exit