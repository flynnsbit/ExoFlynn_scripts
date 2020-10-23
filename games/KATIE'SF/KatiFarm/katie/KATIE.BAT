echo off
cls
if not exist katie.ini goto wrongdk
echo Loading...
if not exist mconfig goto DoSetup

:LoadGame
cls
echo Loading...
cp katie
goto End

:WrongDk
echo Please start game using Disk 1.
goto End

:DoSetup
msetup
if errorlevel 1 katie
goto loadgame

:End
