:menu
@echo off
cls
echo.
echo Press 1 for Monster Bash Part 1
echo Press 2 for Monster Bash Part 2
echo Press 3 for Monster Bash Part 3
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto bio3
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
cd bash123
bash1
cd ..
goto menu

:bio2
cls
cd bash123
bash2
cd ..
goto menu

:bio3
cls
cd bash123
bash3
cd ..
goto menu

:quit
exit