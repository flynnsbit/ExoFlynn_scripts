:menu
@echo off
cls
echo.
echo Press 1 for Ultizurk III Part 1: The Guildmaster's Quest
echo Press 2 for Ultizurk III Part 2: The Mobius Mind
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
@cd part1
uz3
cd ..
goto menu

:bio2
cls
@cd part2
uz3
cd ..
goto menu


:quit
exit