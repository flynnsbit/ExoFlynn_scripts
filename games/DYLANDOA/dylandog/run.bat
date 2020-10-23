@echo off
cls
echo.
echo Press 1 for Dylan Dog: Episode 1
echo press 2 for Dylan Dog: Episode 2
echo Press 3 to Quit
echo.
choice /C:123 /N

if errorlevel = 3 goto end
if errorlevel = 2 goto ep2
if errorlevel = 1 goto ep1

:ep1
cls
@cd dylan1
@main1
goto end

:ep2
cls
@cd dylan2
@main2
goto end

:end