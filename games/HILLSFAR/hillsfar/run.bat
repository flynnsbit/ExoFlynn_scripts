:menu
@echo off
cls
echo.
echo Press 1 to Launch Hillsfar 
echo Press 2 to Transfer Characters from Other Games
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto tran
if errorlevel = 1 goto game

:game
cls
@main
goto quit

:tran
cd ..
cls
echo.
echo Press 1 to Transfer Characters from Curse of the Azure Bonds
echo Press 2 to Transfer Characters from Pool of Radiance
echo Press 3 to Return to the Previous Menu
echo.
echo Please ensure the game you wish to transfer from is installed and
echo a character has been created already.
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto menu
if errorlevel = 2 goto POOL
if errorlevel = 1 goto CURSE

:CURSE
cls
echo.
echo To transfer a character from Curse of the Azure Bonds, please ensure
echo the following:
echo 1: Curse of the Azure Bonds is installed
echo 2: At least one character has been created
echo 3. The character you wish to transfer is *not* currently part of
echo    a party in a save file. A character can be removed from a party in
echo    the training hall.
echo.
if exist .\curse\*.GUY echo A transferable character is detected and has been copied
if not exist .\cursed\*.GUY echo A transferable character is *not* detected
echo.
@copy .\curse\save\*.GUY .\hillsfar\
echo.
pause
cd hillsfar
goto menu

:POOL
cls
echo.
echo To transfer a character from Pool of Radiance, please ensure
echo the following:
echo 1: Pool of Radiance is installed
echo 2: At least one character has been created
echo 3. The character you wish to transfer is *not* currently part of
echo    a party in a save file. A character can be removed from a party in
echo    the training hall.
echo.
if exist .\poolrad\*.CHA echo A transferable character is detected and has been copied
if not exist .\poolrad\*.CHA echo A transferable character is *not* detected
echo.
@copy .\poolrad\save\*.CHA .\hillsfar\
echo.
pause
cd hillsfar
goto menu

:quit
exit