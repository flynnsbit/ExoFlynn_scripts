:menu
@echo off
cls
echo.
echo Press 1 for Empire Deluxe w/ SoundBlaster
echo Press 2 for Empire Deluxe w/ MT32
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB

:SB
cd games\empire
cls
@empire
cd ..
cd ..
cls
goto quit

:MT32
cd games\empirem
cls
@empire
cd ..
cd ..
cls
goto quit

:quit
exit