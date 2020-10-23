@echo off
cls
echo.
echo Press 1 to play the game
echo Press 2 to run the config utility
echo Press 3 to exit
echo.
choice /C:123
IF ERRORLEVEL = 3 GOTO LEAVE
IF ERRORLEVEL = 2 GOTO config
IF ERRORLEVEL = 1 GOTO game

:config
@lordcfg
goto leave

:game
@call start
goto leave

:leave