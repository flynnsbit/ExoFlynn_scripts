echo off
rem   install.bat          03/30/89        for 5.25 disks A & B
if %1a == a goto bad
if %2a == a goto bad
if %1 == %2 goto bad
%1
cls
echo        ษออออออออออออออออออออออออออออออออออออออออออออออออออป
echo        บ   Taito Software Inc. RENEGADE Install Program   บ
echo        ศออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo                                                                       .
echo                Installing From  %1  To  %2
echo                                                                       .
echo         The RENEGADE disk must not be Write Protected.
echo                                                                       .
md %2\RENEGADE
copy %1\instalh2.inc %2\RENEGADE\instalhd.bat
if not exist %2\RENEGADE\instalhd.bat goto bad1
goto last
rem
:bad1
echo                                                                       .
echo Could Not Create the RENEGADE subdirectory on %2
echo RENEGADE not installed.
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
echo [Source Drive] is the drive containing the ORIGINAL RENEGADE disk
echo                                                                       .
echo [Target Drive] is the destination drive & path you want RENEGADE
echo                copied to.
echo                                                                       .
echo                                                                       .
echo Example:  INSTALL A: C:
echo                                                                       .
echo This would install the game into C:\RENEGADE from the A: drive.
echo                                                                       .
goto last1
:last
echo echo=off >taitolnk.bat
echo=off
echo %2 | getdrv >>taitolnk.bat
echo=off
type cdcom.inc >>taitolnk.bat
echo %2\RENEGADE >>taitolnk.bat
echo=off
echo instalhd %1 >>taitolnk.bat
echo=off
taitolnk
:last1
