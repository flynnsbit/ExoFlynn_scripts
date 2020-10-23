:menu
@echo off
cls
echo.
echo Press 1 for RoboMaze II: Part 1 - The Lobby
echo Press 2 for RoboMaze II: Part 2 - The Tower
echo Press 3 for RoboMaze II: Part 3 - The Penthouse
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto RM3
if errorlevel = 2 goto RM2
if errorlevel = 1 goto RM1

:RM1
CD Lobby
cls
rm2
goto quit

:RM2
CD Tower
cls
rm22
goto quit

:RM3
CD Penthous
cls
rm23
goto quit

:quit
exit