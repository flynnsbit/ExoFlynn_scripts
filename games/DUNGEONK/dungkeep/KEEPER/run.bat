:menu
@echo off
cls
echo.
echo Press 1 for Dungeon Keeper
echo Press 2 for The Deeper Dungeons Expansion
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
keeper
goto menu

:bio2
cls
deeper
goto menu

:quit
exit