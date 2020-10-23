@echo off
if x == x%1 goto error
md %1
echo.
echo Please wait... Installing Threat.
echo.
xcopy *.* %1


echo.
echo Please insert disk 2.
echo Laita levyke 2 asemaan.
pause

xcopy monster.dat %1
xcopy shipgar.dat %1
xcopy ship.dat %1

goto noerror

:error
echo.
echo Please add drive and path.
echo Example: INSTALL c:\games\threat
echo.
echo Lis„„ parametriksi asema ja polku.
echo Esim. INSTALL c:\pelit\threat
echo.

:noerror
