:menu
@echo off
cls
echo.
echo Press 1 for Alter Ego Male
echo Press 2 for Alter Ego Female
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
@cd male
@aetv
goto menu

:bio2
cls
@cd female
@aetv
goto menu

:quit
exit