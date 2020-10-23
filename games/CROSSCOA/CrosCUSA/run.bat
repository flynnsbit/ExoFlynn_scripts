:menu
@echo off
cls
echo.
echo Press 1 to play Crosscountry USA
echo Press 2 to launch the Scenario Editor
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto epi2
if errorlevel = 1 goto epi1

:epi1
cd CCUSA
CCUSA
cd ..
cls

goto menu

:epi2
cd CCUSA
USAEDIT
cd ..
cls

goto menu


:quit
exit