:menu
@echo off
cls
echo.
echo Press 1 for Imperium Rex
echo Press 2 for Imperium Rex Game Editor
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto epi2
if errorlevel = 1 goto epi1

:epi1
rex
cls

goto menu

:epi2
rexedit
cls

goto menu


:quit
exit