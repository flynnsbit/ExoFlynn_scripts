:menu
@echo off
cls
echo.
echo Press 1 for Planet X3 w/ CGA 
echo Press 2 for Planet X3 w/ EGA
echo Press 3 for Planet X3 w/ VGA
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto VGA
if errorlevel = 2 goto EGA
if errorlevel = 1 goto CGA

:VGA
cd PX3
cls
PX3_VGA
goto quit

:EGA
cd PX3
cls
PX3_EGA
goto quit

:CGA
cd PX3
cls
PX3_CGA
goto quit


:quit
exit