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
goto noDrv
:begin
if not exist \SF.EXE goto NotOrg
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                                                       บ
echo บ                   Strike Fleet Hard Disk Installation                 บ
echo บ                                                                       บ
echo บ      This will create a directory called %1\STRIKE on your hard       บ
echo บ      disk, and will install Strike Fleet in that directory.           บ
echo บ                                                                       บ
echo บ      If you don't want to install Strike Fleet now, press Ctrl-C.     บ
echo บ      When the message asks if you want to terminate the batch job     บ
echo บ      type Y.                                                          บ
echo บ                                                                       บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
pause
echo 
echo Creating directory %1\STRIKE...
if exist %1\STRIKE\*.* goto dirct
cd\
md %1\STRIKE
copy \*.* %1\STRIKE
if not exist %1\STRIKE\sf.exe goto instl
if not exist %1\STRIKE\SFHD goto instl
copy %1\STRIKE\SFHD %1\SF.BAT
%1
cd\
echo 
echo Strike Fleet is now installed on your hard disk.  To run it, type "SF".
goto done
:NotOrg
echo 
echo Installation Error:  To install Strike Fleet on your hard disk, you
echo must start this install from drive A or B.  For example, if your 
echo Strike Fleet disk is in drive A and you want to install to drive C,
echo Type A: and press Enter.  
echo Type "STRINST C:" and press Enter.
goto error
:Drv
echo 
echo Installation Error:  To install Strike Fleet on your hard disk, you
echo must specify the drive to install Strike Fleet onto.  For example,
echo to install Strike Fleet on drive C, type "STRINST C:" and press Enter.
goto error
:noDrv
echo 
echo Installation Error: The hard drive letter must be a letter from C to F,
echo and must be followed by a colon.  For example, "STRINST C:" will install
echo Strike Fleet on drive C.
goto error
:dirct
echo 
echo Installation Error: Strike Fleet has been installed on the specified drive.
echo To reinstall, delete all files in the STRIKE subdirectory, then try 
echo installing again.
goto error
:instl
echo 
echo Installation Error: An error occured during installation. This could be 
echo caused by a read/write error or perhaps there isn't enough space left on 
echo your hard disk. Strike Fleet installation requires at least 313k free disk 
echo space. Before attempting to reinstall you must delete any files that now 
echo exist in the STRIKE subdirectory of your hard disk.
:error
echo 
echo Strike Fleet has not been installed successfully. 
echo 
:done
