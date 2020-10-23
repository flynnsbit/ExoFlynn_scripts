@echo off
:menu
cls
echo.
echo Press 1 for Caverns of Kroz
echo Press 2 for Caverns of Kroz II
echo Press 3 to Quit
echo.
choice /c:123 /N

if errorlevel = 3 goto quit
if errorlevel = 2 goto cave2
if errorlevel = 1 goto cave1


:cave1
@caverns.com
goto menu

:cave2
@caverns.exe
goto menu

:quit