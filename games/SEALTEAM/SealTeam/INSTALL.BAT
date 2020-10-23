echo off
rem --- install for SEAL Team
cls
rem --- make sure the user specified a valid drive letter (we allow A to H)
rem --- for both the source and dest drives.
if %1a == a goto noDriveSpecified
if %1 == a: goto checkSource
if %1 == A: goto checkSource
if %1 == b: goto checkSource
if %1 == B: goto checkSource
if %1 == c: goto checkSource
if %1 == C: goto checkSource
if %1 == d: goto checkSource
if %1 == D: goto checkSource
if %1 == e: goto checkSource
if %1 == E: goto checkSource
if %1 == f: goto checkSource
if %1 == F: goto checkSource
if %1 == g: goto checkSource
if %1 == G: goto checkSource
if %1 == h: goto checkSource
if %1 == H: goto checkSource
goto notOnThatDrive
:checkSource
if %2a == a goto noDriveSpecified
if %2 == c: goto begin
if %2 == C: goto begin
if %2 == d: goto begin
if %2 == D: goto begin
if %2 == e: goto begin
if %2 == E: goto begin
if %2 == f: goto begin
if %2 == F: goto begin
if %2 == g: goto begin
if %2 == G: goto begin
if %2 == h: goto begin
if %2 == H: goto begin
goto notOnThatDrive
:begin
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                                                       บ
echo บ                      SEAL Team Installation                           บ
echo บ                                                                       บ
echo บ This will create a directory called \SEAL on your destination         บ
echo บ drive %2 and will install SEAL Team into that directory.  SEAL Team   บ
echo บ requires about 3.8 Megabytes of hard disk space.                      บ
echo บ                                                                       บ
echo บ If you don't want to install SEAL Team now, press Ctrl-Break.         บ
echo บ                                                                       บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
pause
rem ----------------------------------------------------
:checkdirectory
if not exist %2\SEAL\*.* goto go_on
rem --- dir already exists.
:directoryExists
echo 
echo There is already a %2\SEAL directory on drive %2.  If you don't
echo want to install SEAL Team into that directory, press Ctrl-Break.
echo Otherwise, press any key to install SEAL Team into %2\SEAL.
pause
goto go_on2
:go_on
rem --- create \SEAL on the current drive.
echo.
echo Creating directory %2\SEAL...
md %2\SEAL
rem ---------------------------------------------------
:go_on2
rem --- make sure source drive contains Disk 1
:1a
if exist %1\SEAL01.EXE goto 1b
echo 
echo Please make sure SEAL Team Disk 1 is in drive %1.
pause
goto 1a
rem --------------------------------------------------
:1b
rem --- copy program disk files, including next batch file, to dest disk.
echo 
echo Copying SEAL Team files...
copy %1\*.* %2\SEAL
%2
cd \SEAL
seal01.exe
del seal01.exe
if not exist %2\SEAL\new.lib goto error
part2.bat %1 %2
rem -------------------------------------------------
rem --- user didn't specify a drive letter followed by a colon.
:noDriveSpecified
echo 
echo Installation Error:  To install SEAL Team, you must specify the drive
echo containing the floppies that you are installing FROM, and the drive
echo you are installing TO.  For example: if you are installing from floppy 
echo drive A: to hard drive C:, then you should type, "INSTALL A: C:" and 
echo press Enter.
goto errorDone
rem -------------------------------------------------
rem --- user specified invalid drive letter.
:notOnThatDrive
echo 
echo Installation Error: One of the specified drives could NOT be found
echo on your system.
echo 
echo Each drive letter must be a letter from A to H, and must be followed by
echo a colon.  For example, "INSTALL A: C:" will install SEAL Team from
echo floppies on drive A: to hard drive C:.
goto errorDone
rem -------------------------------------------------
rem --- general installation error.
:error
echo 
echo Installation Error:  Perhaps there isn't enough space on your destination
echo disk.  SEAL Team requires 3.8 Megabytes of hard disk space 
goto errorDone
rem -------------------------------------------------
rem --- goto here after an error is detected, to print a message and exit.
:errorDone
echo 
echo SEAL Team was not installed correctly.
echo Please try again.
:done
