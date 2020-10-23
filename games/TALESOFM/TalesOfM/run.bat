:menu
@echo off
cls
echo.
echo Press 1 for Merlin's Magic Forest
echo Press 2 for Merlin's Golden Trove
echo Press 3 for Son of Ali Baba
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto bio3
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
forest
goto menu

:bio2
cls
trove
goto menu

:bio3
cls
alibaba
goto menu

:quit
exit