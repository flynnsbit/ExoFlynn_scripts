:menu
@echo off
cls
echo.
echo Press 1 for Rebel Century v1
echo Press 2 for Rebel Century v3
echo Press 3 for Rebel Century v4
echo Press 4 to Quit
echo.
echo Rebel Century v2 was an analysis engine under
echo a win32 chess email app, so it is not included.
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto epi4
if errorlevel = 2 goto epi3
if errorlevel = 1 goto epi1

:epi1
cls
cd 1
config -set "cpu cycles=20000"
rebel
cd ..
goto menu

:epi3
cls
cd 3
config -set "cpu cycles=20000"
rebel
cd ..
goto menu

:epi4
cls
cd 4
config -set "cpu cycles=30000"
rebel 
cd ..
goto menu

:quit
exit