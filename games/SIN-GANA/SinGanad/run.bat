:menu
@echo off
cls
echo.
echo Press 1 for Sin Ganada v2.0
echo Press 2 for Sin Ganada v3.0
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto epi2
if errorlevel = 1 goto epi1

:epi1
cls
cd 2
ganada
cd ..
goto menu

:epi2
cls
cd 3
call SGANADA
cd ..
goto menu

:quit
exit