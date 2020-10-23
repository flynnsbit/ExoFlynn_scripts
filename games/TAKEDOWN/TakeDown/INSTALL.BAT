echo off
cls
echo .
echo .
REM Take Down Hard Disk Installation Batch File

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
echo บ                    TAKE DOWN Hard Disk Installation                   บ
echo บ                                                                       บ
echo บ    TAKE DOWN will now be installed in a directory called %1\TD.       บ
echo บ                                                                       บ
echo บ    If you don't want to install TAKE DOWN now, press Ctrl-Break.      บ
echo บ                                                                       บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo .
echo Press any key when ready...
pause >nul
if exist %1\td\*.* goto alreadyInstalled
echo .
echo Creating %1\TD directory...
md %1\TD
cd %1\TD
echo .
echo Loading Disk #1...
copy *.* %1 >nul
copy install2.bat %1 >nul
copy TD1.bat %1\TD.BAT >nul
if exist %1\TD\WIN1.EXE goto Installed
:error1
echo .
echo Please replace Disk #1 with Disk #2 and
echo press any key ...
%1\TD\install2.bat %1 installed1 >nul
if not exist WIN1.EXE goto error1

:alreadyInstalled
echo .
echo Warning:  TAKE DOWN has already been installed on this drive.
echo .
goto end
:Installed
echo .
echo You have successfully installed TAKE DOWN on drive %1
echo .
echo Type "TD" to play!
%1
cd \
goto end
:notOnThatDrive
echo .
echo Please specify drive C, D, E, or F, followed by a colon.
echo For example:  "INSTALL C:"
echo .
goto end
:noDriveSpecified
echo .
echo Please specify which drive to install TAKE DOWN on...
echo For example:  "INSTALL C:"
echo .
:end
