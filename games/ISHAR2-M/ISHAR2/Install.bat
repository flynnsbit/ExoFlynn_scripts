@echo off
if "%1"=="" goto Erreur

:deb

rem --------------------------------------------------------------------------
rem ISHAR 2
rem --------------------------------------------------------------------------

@echo
Cls
echo 
echo ���������ͻ
echo � ISHAR 2 �
echo ���������ͼ
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
