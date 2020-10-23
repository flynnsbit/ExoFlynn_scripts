:menu
@echo off
cls
echo.
echo Press 1 for World Class Leader Board
echo Press 2 for Famous Courses of the World: Vol. I
echo Press 3 for Famous Courses of the World: Vol. II
echo Press 4 for Famous Courses of the World: Vol. III
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto FCW3
if errorlevel = 3 goto FCW2
if errorlevel = 2 goto FCW1
if errorlevel = 1 goto GOLF

:GOLF
cls
@golf
goto quit

:FCW1
cd WCLB2
cls
@golf
goto quit

:FCW2
cd WCLB3
cls
@golf
goto quit

:FCW3
cd WCLB4
cls
@golf
goto quit

:quit
exit