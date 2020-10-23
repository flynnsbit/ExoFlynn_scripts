:menu
@echo off
cls
echo.
echo Press 1 for Quarantine w/ Intro
echo Press 2 for Quarantine w/out Intro
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto NOINTRO
if errorlevel = 1 goto INTRO

:INTRO
cd q
cls
@call QVIDAUD
goto quit

:NOINTRO
cd q
cls
@call Q
goto quit

:quit
exit