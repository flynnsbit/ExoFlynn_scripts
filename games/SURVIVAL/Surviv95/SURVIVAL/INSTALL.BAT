@echo off

if "%1" == "" goto par_err

mkdir %1\SURVIVAL > nul
if not exist %1\SURVIVAL\nul goto dir_err

xcopy *.* %1\SURVIVAL > nul
if errorlevel 1 goto hd_err

:succes
echo --------------------------------------------------------------
echo The game has been succesfully installed. Either type Survival 
echo in the chosen directory, or select Survival from the program
echo group to play.
echo --------------------------------------------------------------
goto slut

:par_err
echo --------------------------------------------------------------
echo You must provide a destination path for the game e.g. C:\GAME,
echo then the installation will create a directory called SURVIVAL 
echo and copy all the required files to your harddrive.
echo --------------------------------------------------------------
goto slut

:dir_err
echo --------------------------------------------------------------
echo You must provide a correct destination directory, otherwise it
echo is not possible to install Survival on your harddrive.
echo --------------------------------------------------------------
goto slut

:hd_err
echo --------------------------------------------------------------
echo There has been an error in copying the files to your harddisk
echo please check to see if you have enough room on your harddrive.
echo --------------------------------------------------------------
deltree /Y %1\SURVIVAL
goto slut

:slut

