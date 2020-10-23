:menu
@echo off
cls
echo.
echo Press 1 for Wonderland w/ Adlib
echo Press 2 for Wonderland w/ Roland MT-32
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto epi2
if errorlevel = 1 goto epi1

:epi1
cls
game -disp p -adlib
pause
goto menu

:epi2
cls
game -disp p -roland
goto menu

:quit
exit