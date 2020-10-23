echo off
rem   install.bat          7/9/1990    1 disk install
if %1a == a goto bad
if %2a == a goto bad
if %1 == %2 goto bad
cls
echo        ษอออออออออออออออออออออออออออออออออออออออออออออออออป
echo        บ   Taito Software Inc. Puzznic Install Program   บ
echo        ศอออออออออออออออออออออออออออออออออออออออออออออออออผ
echo                                                                       .
echo                 Installing From  %1  To  %2
echo                                                                       .
echo                                                                       .
md %2\Puzznic
copy %1\install.bat %2\Puzznic
if not exist %2\Puzznic\install.bat goto bad1
copy %1\*.* %2\Puzznic
goto last1
rem
:bad1
echo                                                                       .
echo Could Not Create the Puzznic subdirectory on %2
echo Puzznic not installed.
goto last1
:BAD
cls
echo                                                                       .
echo                                                                       .
echo    %0 %1 %2
echo                                                                       .
echo Install option missing or invalid. Please try again.
echo Format of command is:
echo                       INSTALL [Source Drive] [Target Drive]
echo                                                                       .
echo  Where:
echo                                                                       .
echo [Source Drive] is the drive containing the ORIGINAL Puzznic disk
echo                                                                       .
echo [Target Drive] is the destination drive & path you want Puzznic
echo                copied to.
echo                                                                       .
echo                                                                       .
echo Example:  INSTALL A: C:\ 
echo                                                                       .
echo This would install the game into C:\Puzznic from the A: drive.
echo                                                                       .
:last1
