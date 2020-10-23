@echo off 
echo.
echo Press 1 to play the original release, Catacomb Armageddon
echo Press 2 to play the re-release, Curse of the Catacombs
echo Press 3 to Quit
echo.
choice /c:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto curse
if errorlevel = 1 goto arma

:curse
cd curse
cls
call start
goto quit

:arma
cd arma
cls
start
goto quit

:quit
exit