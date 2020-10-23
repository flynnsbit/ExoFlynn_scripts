:menu
@echo off
cls
echo.
echo Press 1 for F-19 Stealth Fighter w/ Tandy
echo Press 2 for F-19 Stealth Fighter w/ Adlib
echo Press 3 for F-19 Stealth Fighter w/ MT32
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto epi3
if errorlevel = 2 goto epi2
if errorlevel = 1 goto epi1

:epi1
cd f19
cls
F19.COM /AT /D2 /GM /NJ
cd ..
goto menu

:epi2
cd f19
cls
F19.COM /AA /D2 /GM /NJ
cds ..
goto menu

:epi3
cd f19
cls
F19.COM /AR /D2 /GM /NJ
cd ..
goto menu

:quit
exit