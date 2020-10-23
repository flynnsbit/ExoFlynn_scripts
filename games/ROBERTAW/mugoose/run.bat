:menu
@echo off
cls
echo.
echo Press 1 for Roberta William's Mixed-Up Mother Goose w/ SB16
echo Press 2 for Roberta William's Mixed-Up Mother Goose w/ MT32
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto epi2
if errorlevel = 1 goto epi1

:epi1
cls
cd sierra\mgcd
copy .\sb16\MGCDINST.CFG .\
cd ..
cls
call MGCD.bat
cd ..
goto menu

:epi2
cls
cd sierra\mgcd
copy .\mt32\MGCDINST.CFG .\
cd ..
cls
call MGCD.bat
cd ..
goto menu

:quit
exit