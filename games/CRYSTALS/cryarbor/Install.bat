@echo off
if "%1"=="" goto Erreur

:deb

rem --------------------------------------------------------------------------
rem ARBOREA
rem --------------------------------------------------------------------------

@echo
Cls
echo 
echo ษอออออออออออออออออออออป
echo บ CRYSTALS of ARBOREA บ
echo ศอออออออออออออออออออออผ
echo 

echo 
echo please wait, installation in progress...
if exist %1\arborea\start.exe goto iok3
md %1\arborea >nul
:iok3
xcopy *.* %1\arborea >nul
cd %d%\
%1
cd %1\arborea

echo 
echo *** Installation finished ***
echo To play, type START from your Hard drive
goto fin

:Erreur
cls
echo *** Procedure Interrupted - Installation Failed ***
echo Install Destination_Drive
echo ex: INSTALL C:

:fin
