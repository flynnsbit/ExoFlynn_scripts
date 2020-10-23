echo off
cls
if not exist fair.ini goto wrongdk
echo Loading...
if not exist mconfig goto DoSetup

:LoadGame
cls
echo Loading...
cp fair
goto End

:WrongDk
echo Please start game using Disk 1.
goto End

:DoSetup
msetup
if errorlevel 1 mcgee
goto loadgame

:End
