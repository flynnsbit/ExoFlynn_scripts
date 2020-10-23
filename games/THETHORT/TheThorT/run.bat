:menu
@echo off
cls
echo.
echo Press 1 for Volume 1: Caves of Thor
echo Press 2 for Volume 2: Realm of Thor
echo Press 3 for Volume 3: Thor's Revenge
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto bio3
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
caves
goto menu

:bio2
cls
realm
goto menu

:bio3
cls
revenge
goto menu

:quit
exit