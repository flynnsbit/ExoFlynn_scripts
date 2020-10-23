echo off
if .%2 == .~ goto TrueCopy
cls
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
echo บ                    DeathTrack Hard Disk Installation                  บ
echo บ    This will create a directory called %1\DTRACK on your hard disk.   บ
echo บ       If you don't want to install DeathTrack now, press Ctrl-C.      บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
pause
echo 
if not exist install.bat goto diskerr
echo Creating directory %1\DTRACK...
if exist %1\DTRACK\DTRACK.exe goto directoryExists
if not exist %1\DTRACK\*.* md %1\DTRACK
:1
echo 
echo Insert the DeathTrack Disk #1 in the disk drive.
pause
copy install.bat %1\DTRACK
if not exist %1\DTRACK\install.bat goto installationError
%1\DTRACK\install %1 ~
:TrueCopy
:Disk1Now
echo 
echo Copying DeathTrack files...
copy \*.* %1\DTRACK
if not exist %1\DTRACK\win.bmp goto installationError
echo 
:Disk2Now
echo Please insert the DeathTrack Disk #2 in the disk drive.
echo Hit ENTER if loading from the 3 1/2 disk.
pause
if not exist \hi_scores goto Disk2Now
copy \*.* %1\DTRACK
if not exist %1\DTRACK\wrecker.tbl goto installationError

:installDone
cd %1\DTRACK

echo DeathTrack is now installed on your hard disk.  To run it, type "DTRACK".
%1
goto done
:noDriveSpecified
echo 
echo Installation Error:  To install DeathTrack on your hard disk, you
echo must specify the drive to install DeathTrack onto.  For example,
echo to install DeathTrack on drive C, type "INSTALL C:" and press Enter.
goto errorDone
:notOnThatDrive
echo 
echo Installation Error: The hard drive letter must be a letter from C to F,
echo and must be followed by a colon.  For example, "INSTALL C:" will install
echo DeathTrack on drive C.
goto errorDone
:installationError
echo 
echo Installation Error: The error might caused by...
echo   A) insufficient space on the hard disk (720k of space is needed 
echo      to install DeathTrack).
echo   B) damaged disk or file.  
echo   C) ejecting the disk while the installation is still in
echo      progress. 
goto errorDone
:directoryExists
echo 
echo Installation Error: DeathTrack already exists on this drive.
echo Delete this directory and all files in it, then try installing again.
goto errorDone
echo 
:diskerr
echo Installation Error: Please run install from original disk.
goto errorDone
:errorDone
echo 
echo DeathTrack was not installed correctly.
:done
