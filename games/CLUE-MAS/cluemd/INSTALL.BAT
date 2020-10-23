echo off
cls
rem --- make sure the user specified valid drive letter (we allow C to F).
if %1a == a goto noDriveSpecified
if %1 == c: goto begin
if %1 == C: goto begin
if %1 == d: goto begin
if %1 == D: goto begin
if %1 == e: goto begin
if %1 == E: goto begin
if %1 == f: goto begin
if %1 == F: goto begin
goto notOnThatDrive
:begin

echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                                                       บ
echo บ		     Leisure Genius Clue Installation                   บ
echo บ                                                                       บ
echo บ This will create a directory called %1\Clue on your hard disk,        บ
echo บ and will install Clue in that directory.                              บ
echo บ                                                                       บ
echo บ If you don't want to install Clue right now, press Ctrl-Break.        บ
echo บ                                                                       บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
pause

rem --- create \clue on the current drive.
echo 
echo Creating directory %1\CLUE...
if exist %1\clue\*.* goto directoryExists
md %1\clue


rem --- copy all files ---
echo 
echo Copying Clue files...
copy *.* %1\clue
if not exist %1\clue\install.bat goto installationError

rem --- installation was successful!
:installDone
cd %1\clue
echo 
echo Clue is now installed on your hard disk.
echo 
echo 
%1
goto done

rem --- user didn't specify a drive letter followed by a colon.
:noDriveSpecified
echo 
echo Installation Error:  To install Clue on your hard disk, you
echo must specify the drive to install Clue onto.  For example,
echo to install Clue on drive C, type "INSTALL C:" and press Enter.
goto errorDone

rem --- user specified invalid drive letter.
:notOnThatDrive
echo 
echo Installation Error: The hard drive letter must be a letter from C to F,
echo and must be followed by a colon.  For example, "INSTALL C:" will install
echo Clue on drive C.
goto errorDone

rem --- general installation error.
:installationError
echo 
echo Installation Error: Perhaps there isn't enough space on your hard disk.
echo Clue installation requires at least 540k free space.
goto errorDone

rem --- \Clue dir already exists.
:directoryExists
echo 
echo Installation Error: The \Clue directory already exists on this drive.
echo Delete this directory and all files in it, then try installing again.
goto errorDone

rem --- goto here after an error is detected, to print a message and exit.
:errorDone
echo 
echo Clue was not installed correctly.
echo 
echo 
:done
