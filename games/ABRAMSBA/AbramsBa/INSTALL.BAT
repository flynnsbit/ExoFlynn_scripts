echo off
cls
if %1a == a goto Drv
if %1 == c: goto begin
if %1 == C: goto begin
if %1 == d: goto begin
if %1 == D: goto begin
if %1 == e: goto begin
if %1 == E: goto begin
if %1 == f: goto begin
if %1 == F: goto begin
if %1 == g: goto begin
if %1 == G: goto begin
goto noDrv
:begin
if not exist \ABRAMS.COM goto NotOrg
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                                                       บ
echo บ                   ABRAMS BATTLETANK Hard Disk Installation            บ
echo บ                                                                       บ
echo บ      This will create a directory called %1\ABRAMS on your hard       บ
echo บ      disk, and will install ABRAMS BATTLETANK in that directory.      บ
echo บ                                                                       บ
echo บ      If you don't want to install ABRAMS BATTLETANK now, press        บ
echo บ      Ctrl-C. When the message asks if you want to terminate the       บ
echo บ      batch job type Y.                                                บ
echo บ                                                                       บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
pause
echo 
echo Creating directory %1\ABRAMS...
if exist %1\ABRAMS\*.* goto dirct
cd\
md %1\ABRAMS
echo Copying the files from ABRAMS BATTLETANK Disk #1 to %1\ABRAMS.
copy \*.* %1\ABRAMS
if not exist %1\ABRAMS\ABRAMS.COM goto instl
:Disk2
cls
echo Copying the files from ABRAMS BATTLETANK Disk #2 to %1\ABRAMS.
echo 
echo Please replace the ABRAMS BATTLETANK Disk #1 with Disk #2.
echo 
pause
if not exist \SIM.EXE goto Disk2
copy \*.* %1\ABRAMS
%1
cd \ABRAMS
echo 
echo ABRAMS BATTLETANK is now installed on your hard disk.  
echo To run it ABRAMS BATTLETANK type "ABRAMS".
goto done
:NotOrg
echo 
echo Installation Error:  To install ABRAMS BATTLETANK on your hard disk, you
echo must start this install from DISK #1 in drive A or B.  For example, if 
echo your ABRAMS BATTLETANK DISK #1 is in drive A and you want to install to 
echo drive C,
echo Type A: and press Enter.  
echo Type "INSTALL C:" and press Enter.
goto error
:Drv
echo 
echo Installation Error:  To install ABRAMS BATTLETANK on your hard disk, you
echo must specify the drive to install ABRAMS BATTLETANK onto.  For example,
echo to install on drive C, 
echo Type "INSTALL C:" and press Enter.
goto error
:noDrv
echo 
echo Installation Error: The hard drive letter must be a letter from C to F,
echo and must be followed by a colon.  For example, "INSTALL C:" will install
echo ABRAMS BATTLETANK on drive C.
goto error
:dirct
echo 
echo Installation Error: ABRAMS BATTLETANK has been installed on drive %1. 
echo To reinstall, delete all files in the ABRAMS subdirectory, then try
echo installing again.
goto error
:instl
echo 
echo Installation Error: An error occured during installation. This could be 
echo caused by a read/write error or perhaps there isn't enough space left on 
echo your hard disk. ABRAMS BATTLETANK installation requires at least 580k 
echo free disk space. Before attempting to reinstall you must delete any files
echo that now exist in the ABRAMS subdirectory of your hard disk %1.
:error
echo 
echo ABRAMS BATTLETANK has not been installed successfully. 
echo 
:done
