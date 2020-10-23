:menu
@echo off
cls
echo.
echo Press 1 for Game A (4 Balls)
echo Press 2 for Game B (3 Balls)
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto epi2
if errorlevel = 1 goto epi1

:epi1
cls
A
goto menu

:epi2
cls
B
goto menu

:quit
exit