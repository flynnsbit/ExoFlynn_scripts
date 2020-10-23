:menu
@echo off
cls
echo.
echo Press 1 for Elfland Episode 1: Gorgimer's Castle
echo Press 2 for Elfland Episode 2: The Troll Caves
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto e2
if errorlevel = 1 goto e1

:e1
cd elf1
cls
elf1
goto menu

:e2
cd elf2
cls
elf2
goto menu

:quit
exit