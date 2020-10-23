@echo off
cls
echo.
echo Press 1 for Arcy 2: Volume 1 (Shareware)
echo Press 2 for Arcy 2: Volume 2 (Registered)
echo Press 3 for Arcy 2: Volume 3 (Registered)
echo Press 4 to Quit
echo.
choice /C:1234 /N

if errorlevel = 4 goto end
if errorlevel = 3 goto vol3
if errorlevel = 2 goto vol2
if errorlevel = 1 goto vol1

:vol1
cd ar2
ARCY2-1
goto end

:vol2
cd ar22
ARCY2-2
goto end

:vol3
cd ar23
ARCY2-3
goto end

:end