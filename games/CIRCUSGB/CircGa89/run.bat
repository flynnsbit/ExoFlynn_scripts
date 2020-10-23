:menu
@echo off
cls
echo.
echo Press 1 for Circus Games w/ CGA
echo Press 2 for Circus Games w/ EGA
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto EGA
if errorlevel = 1 goto CGA

:CGA
cd cga
cls
@call game
goto quit

:EGA
cd ega
cls
@call game
goto quit

:quit
exit