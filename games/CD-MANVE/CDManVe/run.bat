@echo off
:menu
cls
echo.
echo Press 1 for CD-Man
echo Press 2 for CD-Man Version 2.0
echo Press 3 to Quit
echo.
choice /c:123 /N

if errorlevel = 3 goto quit
if errorlevel = 2 goto cd2
if errorlevel = 1 goto cd1

:cd1
@cd 1
@CD-MAN
cd ..
goto menu

:cd2
@cd 2
@CDMAN2
cd ..
goto menu

:quit