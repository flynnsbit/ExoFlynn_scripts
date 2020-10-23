:menu
@echo off
cls
echo.
echo Press 1 for Metal and Lace: The Battle of the Robo Babes 
echo Press 2 for Metal and Lace: The Battle of the Robo Babes NR-18 Upgrade
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto epi2
if errorlevel = 1 goto epi1

:epi1
cls
cd metal
call ml
cd ..
goto menu

:epi2
cls
cd ..
cd metal18
call ml
cd ..

goto menu

:quit
exit