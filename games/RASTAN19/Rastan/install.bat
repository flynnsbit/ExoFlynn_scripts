echo off
rem   install.bat          6/26/1990    4 disk install
if %1a == a goto bad
if %2a == a goto bad
if %1 == %2 goto bad
%1
cls
echo        ษออออออออออออออออออออออออออออออออออออออออออออออออป
echo        บ   Taito Software Inc. rastan Install Program   บ
echo        ศออออออออออออออออออออออออออออออออออออออออออออออออผ
echo                                                                       .
echo                 Installing From  %1  To  %2
echo                                                                       .
echo         The rastan disk must not be Write Protected.
echo                                                                       .
md %2\rastan
copy %1\instalh2.inc %2\rastan\instalhd.bat
if not exist %2\rastan\instalhd.bat goto bad1
goto last
rem
:bad1
echo                                                                       .
echo Could Not Create the rastan subdirectory on %2
echo rastan not installed.
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
echo [Source Drive] is the drive containing the ORIGINAL rastan disk
echo                                                                       .
echo [Target Drive] is the destination drive & path you want rastan
echo                copied to.
echo                                                                       .
echo                                                                       .
echo Example:  INSTALL A: C:\ 
echo                                                                       .
echo This would install the game into C:\rastan from the A: drive.
echo								          .
goto last1
:last
echo echo=off >taitolnk.bat
echo=off
echo %2 | getdrv >>taitolnk.bat
echo=off
type cdcom.inc >>taitolnk.bat
echo %2\rastan >>taitolnk.bat
echo=off
echo instalhd %1 >>taitolnk.bat
echo=off
taitolnk
:last1
