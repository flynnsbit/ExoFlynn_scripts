@echo off
cls
echo.
echo Press 1 to play Legend of the Red Dragon 2
echo Press 2 to run the configuration utility
echo Press 3 to exit
echo.
choice /C:123
if errorlevel = 3 goto leave
if errorlevel = 2 goto config
if errorlevel = 1 goto game

:config
cls
@l2cfg
goto leave

:game
cls
@call lord2
goto leave

:leave