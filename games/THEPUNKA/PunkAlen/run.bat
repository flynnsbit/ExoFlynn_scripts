:menu
@echo off
cls
echo.
echo Press 1 for Punk Allen Part 1: Drunk Punk Allen
echo Press 2 for Punk Allen Part 2: The Chicken's Plan
echo Press 3 for Punk Allen Part 3: Escape from Prison!
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto bio3
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
play drunk
goto menu

:bio2
cls
play chicken
goto menu

:bio3
cls
play escape
goto menu

:quit
exit