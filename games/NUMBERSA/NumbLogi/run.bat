:menu
@echo off
cls
echo.
echo Press 1 for Numbers & Logic I
echo Press 2 for Numbers & Logic III
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto go2
if errorlevel = 1 goto go1

:go1
cls
nl
goto menu

:go2
cls
nl3
goto menu

:quit
exit