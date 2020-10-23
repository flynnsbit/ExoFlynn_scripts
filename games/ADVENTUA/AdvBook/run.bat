:menu
@echo off
cls
echo.
echo The following games were included with the Adventure Book software.
echo.
echo Press 1 for Gnomic
echo Press 2 for Aliens! (Demo)
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
textrun gnomic.adv
goto menu

:bio2
cls
textrun Aliens!.adv
goto menu

:quit
exit