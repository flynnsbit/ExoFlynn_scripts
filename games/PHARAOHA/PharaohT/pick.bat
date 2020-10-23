:menu
@echo off
cls
echo.
echo Press 1 for Pharaoh's Tomb Episode 1
echo Press 2 for Pharaoh's Tomb Episode 2
echo Press 3 for Pharaoh's Tomb Episode 3
echo Press 4 for Pharaoh's Tomb Episode 4
echo Press 5 to Quit
echo.
choice /C:12345 /N

if errorlevel = 5 goto end
if errorlevel = 4 goto pt4
if errorlevel = 3 goto pt3
if errorlevel = 2 goto pt2
if errorlevel = 1 goto pt1

:pt1
PTOMB1
goto menu

:pt2
PTOMB2
goto menu

:pt3
PTOMB3
goto menu

:pt4
PTOMB4
goto menu

:end