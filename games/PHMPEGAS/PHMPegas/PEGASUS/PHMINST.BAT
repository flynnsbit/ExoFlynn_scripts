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
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                                                       บ
echo บ                   PHM Pegasus Hard Disk Installation                  บ
echo บ                                                                       บ
echo บ      This will create a directory called %1\PEGASUS on your hard      บ
echo บ      disk, and will install PHM Pegasus in that directory.            บ
echo บ                                                                       บ
echo บ      If you don't want to install PHM Pegasus now, press Ctrl-C.      บ
echo บ      When the message asks if you want to terminate the batch job     บ
echo บ      type Y.                                                          บ
echo บ                                                                       บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
pause
echo 
echo Creating directory %1\PEGASUS...
if exist %1\PEGASUS\*.* goto dirct
%1
cd\
md %1\PEGASUS
copy a:\*.* %1\PEGASUS
copy a:\phm.bat %1\hf.bat
if not exist %1\PEGASUS\hf.exe goto instl
if not exist %1\hf.bat goto instl
echo 
echo PHM Pegasus is now installed on your hard disk.  To run it, type "HF (mode)".
goto done
:Drv
echo 
echo Installation Error:  To install PHM Pegasus on your hard disk, you
echo must specify the drive to install PHM Pegasus onto.  For example,
echo to install PHM on drive C, type "PHMINST C:" and press Enter.
goto error
:noDrv
echo 
echo Installation Error: The hard drive letter must be a letter from C to F,
echo and must be followed by a colon.  For example, "PHMINST C:" will install
echo PHM Pegasus on drive C.
goto error
:dirct
echo 
echo Installation Error: PHM Pegasus has been installed on the specified drive.
echo To reinstall, delete all files in the PEGASUS subdirectory, then try 
echo installing again.
goto error
:instl
echo 
echo Installation Error: An error occured during installation. This could be 
echo caused by a read/write error or perhaps there isn't enough space left on 
echo your hard disk. PHM Pegasus installation requires at least 200k free disk 
echo space. Before attempting to reinstall you must delete any files that now 
echo exist in the PEGASUS subdirectory of your hard disk.
:error
echo 
echo PHM Pegasus has not been installed successfully. 
echo 
:done
