@echo off
:menu
cls
echo.
echo Press 1 for Clyde's Adventure Chapter 1
echo Press 2 for Clyde's Adventure Chapter 2
echo Press 3 to Quit
echo.
choice /C:123 /N

if errorlevel = 3 goto end
if errorlevel = 2 goto c2
if errorlevel = 1 goto c1

:c1
config -set "cpu cycles=30000"
cls
@clyde1
goto end

:c2
config -set "cpu cycles=1500"
cls
@clyde2
goto end

:end