:menu
@echo off
cls
echo.
echo Press 1 for Bandor: The Search for the Storm Giant King
echo Press 2 for Bandor II: The Wrath of the Storm Giant King
rem echo Press 3 for Bandor III: The Final Encounter
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
rem if errorlevel = 3 goto bio3
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cd 1
cls
bandor
cd ..
goto menu

:bio2
cd 2
cls
call bandor2
cd ..
goto menu

:bio3
cd 3
cls
call bandor3
cd ..
goto menu

:quit
exit