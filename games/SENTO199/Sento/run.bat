:menu
@echo off
cls
echo.
echo Press 1 for Creep Clash
echo Press 2 for Sento
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto SEN
if errorlevel = 1 goto CC1

:CC1
CD 47DO
CD CREDOS
cls
@call INTRO
@CREEP
goto quit

:SEN
CD 47DO
CD SENDOS
cls
@call INTRO
@SENTOR
goto quit

:quit
exit