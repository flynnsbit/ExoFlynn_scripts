:menu
@echo off
cls
echo.
echo Press 1 for The Multi-dimensional Thief Text only version
echo Press 2 for The Multi-dimensional Thief Graphical version
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
call thief
goto menu

:bio2
cls
cd svga
THIEF
cd ..
goto menu

:quit
exit