:menu
@echo off
cls
echo.
echo Press 1 for Championship Manager 2 w/ French Leagues
echo Press 2 for Championship Manager 2 w/ German Leagues
echo Press 3 for Championship Manager 2 w/ Italian Leagues
echo Press 4 for Championship Manager 2 w/ Spanish Leagues
echo Press 5 for Championship Manager 2 w/ Belgian Leagues
echo Press 6 for Championship Manager 2 w/ Dutch Leagues
echo Press 7 to Quit
echo.
choice /C:1234567 /N Please Choose:

if errorlevel = 7 goto quit
if errorlevel = 6 goto D
if errorlevel = 5 goto B
if errorlevel = 4 goto S
if errorlevel = 3 goto I
if errorlevel = 2 goto G
if errorlevel = 1 goto F

:F
CD CM2_FRE
cls
@call go
goto quit

:G
CD CM2_GER
cls
@call go
goto quit

:I
CD CM2_ITY
cls
@call go
goto quit

:S
CD CM2_SPA
cls
@call go
goto quit

:B
CD CM2_BEL
cls
@call go
goto quit

:D
CD CM2_HOL
cls
@call go
goto quit

:quit
exit