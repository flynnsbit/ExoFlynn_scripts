:menu
@echo off
cls
echo.
echo Press 1 for Harpoon II Deluxe
echo Press 2 for Harpoon II Game Setup
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
cd harpoon2
cls
@HARPOON2
goto quit

:MT32
cd harpoon2
cls
@H2SETUP
goto quit

:quit
exit