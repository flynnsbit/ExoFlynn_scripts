:menu
@echo off
cls
echo.
echo Press 1 for Dark Ages Volume 1: Prince of Destiny
echo Press 2 for Dark Ages Volume 2: The Undead Kingdom
echo Press 3 for Dark Ages Volume 3: Dungeons of Doom
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto da3
if errorlevel = 2 goto da2
if errorlevel = 1 goto da1

:da1
cls
cd 1
da1
cd ..
goto menu

:da2
cls
cd 2
da2
cd ..
goto menu

:da3
cls
cd 3
da3
cd ..
goto menu

:quit
exit