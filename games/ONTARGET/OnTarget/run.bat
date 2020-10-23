:menu
@echo off
cls
echo.
echo Press 1 for EGA Bomb (1988)
echo Press 2 for Artillery Combat / VGA Bomb (1989)
echo Press 3 for OnTarget (1996)
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto bio3
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
egabomb
goto menu

:bio2
cls
vgabomb
goto menu

:bio3
cls
ontarget
goto menu


:quit
exit