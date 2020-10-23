@echo off
cls
echo.
echo Press 1 for Batman vs The Penguin
echo Press 2 for Batman vs The Joker
echo Press 3 to Quit
echo.
choice /C:123 /N

if errorlevel = 3 goto end
if errorlevel = 2 goto ep2
if errorlevel = 1 goto ep1

:ep2
cls
@joker
goto end

:ep1
cls
@penguin
goto end

:end