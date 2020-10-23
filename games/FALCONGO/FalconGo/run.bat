:menu
@echo off
cls
echo.
echo Press 1 to Launch Falcon Gold
echo Press 2 to Launch the Art of the Kill video player
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto aotk
if errorlevel = 1 goto fcd

:fcd
cd falconcd
cls
falconcd
goto menu

:aotk
cd AOTK
cls
NEWAOTK
goto menu

:quit
exit