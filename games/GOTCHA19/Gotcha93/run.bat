:menu
@echo off
cls
echo.
echo Press 1 for Gotcha v2.0
echo Press 2 for Gotcha v2.1
echo Press 3 for Gotcha v2.2
echo Press 4 for Gotcha v2.32
echo Press 5 for Gotcha v2.4
echo Press 6 for Gotcha v3.0
echo Press 7 for Gotcha v3.1
echo Press 8 to Quit
echo.
choice /C:12345678 /N Please Choose:

if errorlevel = 8 goto quit
if errorlevel = 7 goto go7
if errorlevel = 6 goto go6
if errorlevel = 5 goto go5
if errorlevel = 4 goto go4
if errorlevel = 3 goto go3
if errorlevel = 2 goto go2
if errorlevel = 1 goto go1

:go1
cls
cd 2.0
gotcha
cd ..
goto menu

:go2
cls
cd 2.1
gotcha
cd ..
goto menu

:go3
cls
cd 2.2
GOTCHA22
cd ..
goto menu

:go4
cls
cd 2.32
GO232
cd ..
goto menu

:go5
cls
cd 2.41
GO241
cd ..
goto menu

:go6
cls
cd 3.0
GO300
cd ..
goto menu

:go7
cls
cd 3.1
GO310
cd ..
goto menu

:quit
exit