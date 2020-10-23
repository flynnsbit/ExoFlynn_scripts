:menu
@echo off
cls
echo.
echo Press 1 for Breach 
echo Press 2 for Scenario Builder
echo Press 3 to Quit
echo.
echo The Scenario Builder is needed in order to create a new squad.
echo Keys can be somewhat confusing, so please reference the 
echo "Function Keys" document under additional applications\extras.
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto quest
if errorlevel = 1 goto game

:game
cls
echo.
echo Press F1 to load a scenario after the title screen.
echo.
pause
cls
@BREACH
goto quit

:quest
cls
@SCENARIO
goto quit

:quit
exit