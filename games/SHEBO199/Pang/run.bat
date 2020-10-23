:menu
@echo off
cls
echo.
echo Press 1 to run Pang
echo Press 2 to run the Config utility
echo Press 3 to Quit
echo.
echo Config allows you to set 1 or 2 players as well
echo as map the keys.
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
cls
@ball
goto quit

:MT32
cls
@ballcfg
goto quit

:quit
exit