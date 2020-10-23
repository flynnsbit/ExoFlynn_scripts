:menu
@echo off
cls
echo.
echo Press 1 for BattleStar 
echo Press 2 for to run the Setup Utility
echo Press 3 to Quit
echo.
echo The Setup Utility will allow you to change difficulty
echo as well as add a second player.
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
cls
@BATLSTAR
goto quit

:MT32
cls
@SETUP
goto menu

:quit
exit