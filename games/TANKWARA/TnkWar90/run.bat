:menu
@echo off
cls
echo.
echo Press 1 to play Tank Wars
echo Press 2 to Configure Tank Wars
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
BOMB
goto menu

:bio2
cls
BOMBCFG
goto menu

:quit
exit