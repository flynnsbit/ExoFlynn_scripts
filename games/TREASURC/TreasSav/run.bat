:menu
@echo off
cls
echo.
echo Press 1 to run Treasures of the Savage Frontier
echo Press 2 to Transfer Characters
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto tran
if errorlevel = 1 goto game

:game
cls
@call start
goto quit

:tran
cd ..
cls
echo.
echo Press 1 to Transfer Characters from Gateway to the Savage Frontier
echo Press 2 to Transfer Characters from Pools of Darkness
echo Press 3 to Return to the Previous Menu
choice /C:123 /N Please Choose:

if errorlevel = 3 goto menu
if errorlevel = 2 goto POOL
if errorlevel = 1 goto GATE

:GATE
cls
echo.
echo To transfer a character from Gateway to the Savage Frontier, please ensure
echo the following:
echo 1: Gateway to the Savage Frontier is installed
echo 2: At least one character has been created
echo 3. The character you wish to transfer is *not* currently part of
echo    a party in a save file.
echo.
if exist .\gatesf\save\*.GUY echo A transferable character is detected and has been copied
if not exist .\gatesf\save\*.GUY echo A transferable character is *not* detected
echo.
@copy .\gatesf\save\*.GUY \TreasSav\save
echo.
pause
cd TreasSav
goto menu

:POOL
cls
echo.
echo To transfer a character from Pools of Darkness, please ensure
echo the following:
echo 1: Pools of Darkness is installed
echo 2: At least one character has been created
echo 3. The character you wish to transfer is *not* currently part of
echo    a party in a save file.
echo.
if exist .\pooldark\save\*.PC echo A transferable character is detected and has been copied
if not exist .\pooldark\save\*.PC echo A transferable character is *not* detected
echo.
@copy .\pooldark\save\*.PC .\TreasSav\save
if exist .\pooldark\save\*.PC copy .\pooldark\save\*.efx .\TreasSav\save
if exist .\pooldark\save\*.PC copy .\pooldark\save\*.thg .\TreasSav\save
echo.
pause
cd TreasSav
goto menu

:quit
exit