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
echo บ                    MechWarrior Hard Disk Installation                 บ
echo บ    This will create a directory called %1\MECHWAR on your hard disk.  บ
echo บ       If you don't want to install MechWarrior now, press Ctrl-C.     บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
pause
echo 
if not exist MW.exe goto diskerr
echo Creating directory %1\MECHWAR...
if exist %1\MECHWAR\mw.exe goto directoryExists
if not exist %1\MECHWAR\*.* md %1\MECHWAR
:1
cls
echo Insert the MechWarrior Disk #1 in the disk drive.
echo If Installing from 3 1/2, insert MechWarrior 3 1/2 Disk #1.
pause
copy install.bat %1\MECHWAR
if not exist %1\MECHWAR\install.bat goto InstError
%1\MECHWAR\install %1 ~
:TrueCopy
:Disk1Now
echo 
echo Copying MechWarrior files...
copy mw_apics.bin %1\MECHWAR
copy mw_1pics.bin %1\MECHWAR
copy mw_2pics.bin %1\MECHWAR
copy mw_cpics.bin %1\MECHWAR
copy mw_gpics.bin %1\MECHWAR
copy mw_tpics.bin %1\MECHWAR
copy mw*.exe %1\MECHWAR
copy m*.mus %1\MECHWAR
copy death.mus %1\MECHWAR
copy *.fnt %1\MECHWAR
if not exist %1\MECHWAR\mw.exe goto InstError
echo 
:Disk2Now
cls
echo Please insert the MechWarrior Disk #2 in the disk drive.
echo If installing from 3 1/2 disks leave disk #1 in the drive.
pause
if not exist mw_pics.bin goto Disk2Now
copy mw_pics.bin %1\MECHWAR
copy mw_fpics.bin %1\MECHWAR
copy victory.mus %1\MECHWAR
copy l*.mus %1\MECHWAR
if not exist %1\MECHWAR\mw_pics.bin goto InstError
if not exist %1\MECHWAR\mw_fpics.bin goto InstError
:Disk3Now
cls
echo Please insert the MechWarrior Disk #3 in the disk drive.
echo If installing from 3 1/2, insert MechWarrior 3 1/2 Disk #2.
pause
if not exist btech.exe goto Disk3Now
copy *.dat %1\MECHWAR
copy *.fnt %1\MECHWAR
copy *.exe %1\MECHWAR
copy *.wld %1\MECHWAR
copy *.grd %1\MECHWAR
copy *.snd %1\MECHWAR
copy *.pal %1\MECHWAR
If not exist %1\MECHWAR\btech.exe goto InstError
:Disk4Now
cls
echo Please inser the MechWarrior Disk #4 in the disk drive.
echo If installing from 3 1/2 disks leave disk #2 in the drive.
pause
if not exist war.bmp goto Disk4Now
copy *.gi %1\MECHWAR
copy *.tbl %1\MECHWAR
copy *.scr %1\MECHWAR
copy *.bmp %1\MECHWAR
if not exist %1\MECHWAR\rifpck.tbl goto InstError
if not exist %1\MECHWAR\war.bmp goto InstError
:installDone
cd %1\MECHWAR
cls
echo MechWarrior is now installed on your hard disk.  To run it, type MW.
%1
goto done
:noDriveSpecified
echo 
echo Installation Error:  To install MechWarrior on your hard disk, you
echo must specify the drive to install to.  For example,
echo to install MechWarrior on drive C, type "INSTALL C:" and press Enter.
goto errorDone
:notOnThatDrive
echo 
echo Installation Error: The hard drive letter must be a letter from C to F,
echo and must be followed by a colon.  For example, "INSTALL C:" will install
echo MechWarrior on drive C.
goto errorDone
:InstError
echo 
cls
echo Installation Error: The error might caused by...
echo      A) insufficient space on the hard disk (1,440k of space is needed 
echo         to install MechWarrior).
echo      B) damaged disk or file.  
echo      C) ejecting the disk while the installation is still in
echo         progress.
echo      D) Installation to a nonexistent drive. 
echo Delete all files in the MECHWAR directory (del %1\mechwar\*.*), 
echo remove the directory (rd %1\MECHWAR) and try the installation 
echo process again.
goto errorDone
:directoryExists
echo 
echo Installation Error: MechWarrior already exists on this drive.
echo Delete this directory and all files in it, then try installing again.
goto errorDone
echo 
:diskerr
echo Installation Error: Please run install from original disk.
goto errorDone
:errorDone
echo 
echo MechWarrior was not installed correctly.
:done
