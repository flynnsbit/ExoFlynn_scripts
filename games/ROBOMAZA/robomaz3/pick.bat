@echo off
cls
echo.
echo Press 1 for Robomaze 3: The Dome (Shareware Episode)
echo Press 2 for Robomaze 3: The Final Journey (Registered Episode)
echo Press 3 to Quit
echo.
choice /C:123 /N

if errorlevel = 3 goto end
if errorlevel = 2 goto journ
if errorlevel = 1 goto dome


:dome
cd dome
ROBO3
goto end

:journ
RM3
goto end

:end