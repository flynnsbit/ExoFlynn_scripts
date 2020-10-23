:menu
@echo off
cls
echo.
echo Press 1 for Desert Storm
echo Press 2 for Coalition Command
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1
pause
:bio1
cls
call gulfhi
goto menu

:bio2
cls
call GULFCCHI
goto menu

:quit
exit