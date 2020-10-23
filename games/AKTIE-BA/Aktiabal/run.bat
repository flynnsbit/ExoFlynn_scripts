:menu
@echo off
cls
echo.
echo Press 1 for Aktie-bal 1
echo Press 2 for Aktie-bal 2
echo Press 3 for Aktie-bal 3
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto akti3
if errorlevel = 2 goto akti2
if errorlevel = 1 goto akti1

:akti1
cd 1
cls
@bal
goto quit

:akti2
cd 2
cls
@bal
goto quit

:akti3
cd 3
cls
@bal
goto quit

:quit
exit