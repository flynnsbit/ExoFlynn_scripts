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
if not exist f.exe goto NotOrg
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                                                       บ
echo บ               FERRARI FORMULA ONE Hard Disk Installation              บ
echo บ                                                                       บ
echo บ      This will create a directory called %1\FERRARI on your hard      บ
echo บ      disk, and will install FERRARI FORMULA ONE in that directory.    บ
echo บ                                                                       บ
echo บ      If you don't want to install FERRARI FORMULA ONE now, press      บ
echo บ      Ctrl-C. When the message asks if you want to terminate the       บ
echo บ      batch job type Y.                                                บ
echo บ                                                                       บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
pause
echo 
echo Creating directory %1\FERRARI...
if exist %1\FERRARI\*.* goto dirct
cd\
md %1\FERRARI
echo Copying the files from FERRARI FORMULA ONE "MAIN DISK" to %1\FERRARI.
copy \*.* %1\FERRARI
if not exist %1\FERRARI\F.EXE goto instl
:Disk2
cls
echo Copying the files from FERRARI FORMULA ONE "RACE DISK to %1\FERRARI.
echo 
echo Please replace the FERRARI FORMULA ONE "MAIN DISK" WITH THE "RACE DISK".
echo 
pause
if not exist \OCARS.FF1 goto Disk2
copy \*.* %1\FERRARI
%1
cd \FERRARI
echo 
echo FERRARI FORMULA ONE is now installed on your hard disk.  
echo To run FERRARI FORMULA ONE type "FF1".
goto done
:NotOrg
echo 
echo Installation Error:  To install FERRARI FORMULA ONE on your hard disk, you
echo must start this install with the "MAIN DISK" in drive A or B.  For example,
echo your if the FERRARI FORMULA ONE "MAIN DISK" is in drive A and you want to 
echo install to drive C,
echo Type A: and press Enter.  
echo Type "INSTALL C:" and press Enter.
goto error
:Drv
echo 
echo Installation Error:  To install FERRARI FORMULA ONE on your hard disk, you
echo must specify the drive to install FERRARI FORMULA ONE onto.  For example,
echo to install on drive C, 
echo Type "INSTALL C:" and press Enter.
goto error
:noDrv
echo 
echo Installation Error: The hard drive letter must be a letter from C to F,
echo and must be followed by a colon.  For example, "INSTALL C:" will install
echo FERRARI FORMULA ONE on drive C.
goto error
:dirct
echo 
echo Installation Error: FERRARI FORMULA ONE has been installed on drive %1. 
echo To reinstall, delete all files in the FERRARI subdirectory, then try
echo installing again.
goto error
:instl
echo 
echo Installation Error: An error occured during installation. This could be 
echo caused by a read/write error or perhaps there isn't enough space left on 
echo your hard disk. FERRARI FORMULA ONE installation requires at least 680k 
echo free disk space. Before attempting to reinstall you must delete any files
echo that now exist in the FERRARI subdirectory of your hard disk %1.
:error
echo 
echo FERRARI FORMULA ONE has not been installed successfully. 
echo 
:done
