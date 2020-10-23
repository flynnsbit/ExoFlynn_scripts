@echo off 
echo.
echo Press 1 to play the original release, Catacomb Apocalypse
echo Press 2 to play the re-release, Terror of the Catacombs
echo Press 3 to Quit
echo.
choice /c:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto ter
if errorlevel = 1 goto apoc

:ter
cd ter
cls
call start
goto quit

:apoc
cd apoc
cls
start
goto quit

:quit
exit