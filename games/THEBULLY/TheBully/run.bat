:menu
@echo off
cls
echo.
echo Press 1 to run Part 1 of The Bully
echo Press 2 to run Part 2 of The Bully
echo Press 3 to run Part 3 of The Bully
echo Press 4 to run Part 4 of The Bully
echo Press 5 to run Part 5 of The Bully
echo Press 6 to run Part 6 of The Bully
echo Press 7 to Quit
echo.
echo Note: You'll have to quit QBASIC after each section manually. When prompted,
echo answer with proper capitilzation, such as "Yes" and "No" or it won't recognize
echo your response.
echo.
choice /C:1234567 /N Please Choose:

if errorlevel = 7 goto quit
if errorlevel = 6 goto bio6
if errorlevel = 5 goto bio5
if errorlevel = 4 goto bio4
if errorlevel = 3 goto bio3
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
qbasic /run THEBULLY.1
goto menu

:bio2
cls
qbasic /run THEBULLY.2
goto menu

:bio3
cls
qbasic /run THEBULLY.3
goto menu

:bio4
cls
qbasic /run THEBULLY.4
goto menu

:bio5
cls
qbasic /run THEBULLY.5
goto menu

:bio6
cls
qbasic /run THEBULLY.6
goto menu

:quit
exit