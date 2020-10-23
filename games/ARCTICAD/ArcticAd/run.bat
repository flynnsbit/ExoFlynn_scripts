@echo off 
:menu
cls
echo.
echo Press 1 for Arctic Adventure Volume 1
echo Press 2 for Arctic Adventure Volume 2
echo Press 3 for Arctic Adventure Volume 3
echo Press 4 for Arctic Adventure Volume 4
echo Press 5 to Quit
echo.
choice /c:12345 /n Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto aa4
if errorlevel = 3 goto aa3
if errorlevel = 2 goto aa2
if errorlevel = 1 goto aa1

:aa1
cls
@aa1
goto menu

:aa2
cls
@aa2
goto menu

:aa3
cls
@aa3
goto menu

:aa4
cls
@aa4
goto menu

:quit
exit