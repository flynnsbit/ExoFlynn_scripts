:menu
@echo off
cls
echo.
echo Press 1 to run Secret of the Silver Blades
echo Press 2 to Transfer Characters from Curse of the Azure Bonds
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto tran
if errorlevel = 1 goto game

:game
cls
@start
goto quit

:tran
cd ..
cls
echo.
echo To transfer a character from Curse of the Azure Bonds, please ensure
echo the following:
echo 1: Curse of the Azure Bonds is installed
echo 2: At least one character has been created
echo 3. The character you wish to transfer is *not* currently part of
echo    a party in a save file.
echo.
if exist .\curse\save\*.guy echo A transferable character is detected and has been copied
if not exist .\curse\save\*.guy echo A transferable character is *not* detected
echo.
@copy .\curse\save\*.guy .\secsilbl\save
echo.
pause
cd secsilbl
goto menu

:quit
exit