:menu
@echo off
cls
echo.
echo Press 1 for Heroes: The Sanguine Seven
echo Press 2 for Heroes: The Tantalizing Trio (SW Demo of original game)
echo Press 3 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto h2
if errorlevel = 1 goto h1

:h1
cls
cd h1
HEROS
cd ..
goto menu

:h2
cls
cd h2
HEROES
cd ..
goto menu

:quit
exit