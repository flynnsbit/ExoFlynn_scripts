@echo off
if "%1"=="" goto Erreur

:deb

rem --------------------------------------------------------------------------
rem ISHAR 2
rem --------------------------------------------------------------------------

@echo
Cls
echo 
echo ษอออออออออป
echo บ ISHAR 2 บ
echo ศอออออออออผ
echo 

md %1\ISHAR2 >nul

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
