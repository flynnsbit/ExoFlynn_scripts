:menu
@echo off
cls
echo.
echo Press 1 for Klondike v2.2
echo Press 2 for Klondike v2.3
echo Press 3 for Klondike v3.0
echo Press 4 for Klondike v3.1
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto go4
if errorlevel = 3 goto go3
if errorlevel = 2 goto go2
if errorlevel = 1 goto go1

:go1
cls
cd 2.2
KLONDIKE
cd ..
goto menu

:go2
cls
cd 2.3
KLONDIKE
cd ..
goto menu

:go3
cls
cd 3.0
KLONDIKE
cd ..
goto menu

:go4
cls
cd 3.1
KLONDIKE
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