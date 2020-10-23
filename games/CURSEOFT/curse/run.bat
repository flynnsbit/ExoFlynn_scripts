:menu
@echo off
cls
echo.
echo Characters can be transferred from Pool of Radiance,
echo Hillsfar or Gateway to the Savage Frontier
echo. 
echo Press 1 to Launch Curse of the Azure Bonds
echo Press 2 to Transfer Characters
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto tran
if errorlevel = 1 goto game

:game
cls
@START
goto quit

:tran
cls
echo.
echo Ensure the game you want to transfer your character from is installed.
echo.
echo Press 1 to Transfer from Pool of Radiance
echo Press 2 to Transfer from Hillsfar
echo Press 3 to Transfer from Gateway to the Savage Frontier
echo Press 4 to Return to the Main Menu
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto menu
if errorlevel = 3 goto Gate
if errorlevel = 2 goto Hill
if errorlevel = 1 goto Pool

:pool
cd ..
cls
echo.
echo To transfer a character from Pool of Radiance, please ensure
echo the following:
echo 1: Pool of Radiance is installed
echo 2: At least one character has been created
echo 3. The character you wish to transfer is *not* currently part of
echo    a party in a save file.
echo.
if exist .\poolrad\*.cha echo A transferable character is detected and has been copied
if not exist .\poolrad\*.cha echo A transferable character is *not* detected
echo.
@copy .\poolrad\*.cha .\curse\save\
if exist .\poolrad\*.cha copy .\poolrad\*.spc .\curse\save\
echo.
pause
cd curse
goto menu

:Hill
cd ..
cls
echo.
if exist .\hillsfar\*.hil echo A transferable character is detected and has been copied
if not exist .\hillsfar\*.hil echo A transferable character is *not* detected
echo.
copy .\hillsfar\*.hil .\curse\save\
echo.
pause
cd curse
goto menu

:Gate
cd ..
cls
echo.
echo To transfer a character from Gateway to the Savage Frontier, please ensure
echo the following:
echo 1: Gateway to the Savage Frontier is installed
echo 2: At least one character has been created
echo 3. The character you wish to transfer is *not* currently part of
echo    a party in a save file.
echo.
if exist .\gatesf\save\*.guy echo A transferable character is detected and has been copied
if not exist .\gatesf\save\*.guy echo A transferable character is *not* detected
echo.
copy .\gatesf\save\*.guy .\curse\save\
echo.
pause
cd curse
goto menu

:quit
exit