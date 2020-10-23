:menu
@echo off
cls
echo.
echo Press 1 for Gargoyle
echo Press 2 for Gargoyle Revenge
echo Press 3 for Gargoyle Mania
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
cls
@GARGOYLE
goto menu

:MT32
cls
@REVENGE
goto menu

:SC55
cls
@MANIA
goto menu

:quit
exit