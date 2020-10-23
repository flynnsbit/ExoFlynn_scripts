:menu
@echo off
cls
echo.
echo Press 1 for Magic Maycabs Version 1
echo Press 2 for Magic Maycabs Version 2
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto v2
if errorlevel = 1 goto v1

:v1
cd v1
cls
@MAYCAB
goto quit

:v2
cd v2
cls
@MAYCAB
goto quit

:quit
exit