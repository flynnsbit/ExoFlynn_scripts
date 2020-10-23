@echo off
cls
echo.
echo Press 1 for Great Naval Battles 3
echo Press 2 for the Scenario Editor
echo Press 3 to Quit
echo.
choice /C:123 /N

if errorlevel = 3 goto end
if errorlevel = 2 goto scen
if errorlevel = 1 goto gnb3


:gnb3
call start2
goto end

:scen
call EDITOR2
goto end

:end