echo off
echo ÿ
if "%1" == "" goto NoLet
echo ÿ
echo HARD DISK INSTALLATION FOR BAR GAMES
pause

set steeel=%1
if %1 == c set steeel=c:
if %1 == d set steeel=d:
if %1 == e set steeel=e:
if %1 == f set steeel=f:
if %1 == g set steeel=g:
echo Making subdirectory %steeel%\ACCOLADE\BARGAMES...
mymkdir %steeel%
if errorlevel 1 goto NoMake
echo Copying files...
copy *.* %steeel% > nul
myexist bg502.dat
if not errorlevel 1 goto :GotB
:GetB
echo ÿ
echo Please put your Bar Games Disk #2 in the drive
pause
myexist bg502.dat
if errorlevel 1 goto :GetB
echo Copying files...
copy *.* %steeel% > nul
:GotB
echo Installation complete.
echo To play Bar Games, first type
echo 	%steeel%
echo Then type
echo 	CD \ACCOLADE\BARGAMES
echo Then type
echo 	BG
goto Exit

:NoMake
echo Unable to create the directory
echo 	\ACCOLADE\BARGAMES
echo Installation not done.
goto Exit

:NoLet
echo Unable to install, drive letter needed, eg
echo 	INSTALL C:

:Exit
