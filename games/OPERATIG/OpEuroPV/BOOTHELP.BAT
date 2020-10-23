@echo off
cls

if "%1" == "" goto DriveNeeded
if "%1" == "A:" goto MakeBootDisk
if "%1" == "a:" goto MakeBootDisk 
goto BadDrive

:MakeBootDisk
echo.
echo     ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo     บ                                                                บ
echo     บ           OPERATION EUROPE  PATH TO VICTORY 1939-45            บ 
echo     บ                                                                บ
echo     บ                     Boot Disk Creation                         บ
echo     บ                                                                บ
echo     บ                                                                บ
echo     บ  This program will copy all the necessary files to make a      บ
echo     บ  working Boot Disk.                                            บ
echo     บ                                                                บ
echo     บ  If you do not want to create a Boot Disk, then press          บ
echo     บ  Ctrl-C now.                                                   บ
echo     บ                                                                บ
echo     ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo. 
pause > nul
cls
echo. 
echo     ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo     บ                                                                บ
echo     บ  Please put a formatted diskette in drive %1 and hit ENTER.    บ
echo     บ                                                                บ
echo     ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
pause > nul

goto MainCheck

:MainCheck
if exist %1\autoexec.bat goto ConfigCheck 
if exist %1\config.sys goto AutoCheck 
goto CopyFiles

:AutoCheck
if exist %1\autoexec.bat goto MakeBakBoth
goto MakeBakCon

:ConfigCheck
if exist %1\config.sys goto MakeBakBoth
goto MakeBakAuto

:MakeBakAuto
cls
echo.
echo     ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo     บ                                                                บ
echo     บ  AUTOEXEC.BAT already exists on the disk in drive %1  Do you   บ
echo     บ  want to continue?                                             บ
echo     บ                                                                บ
echo     บ  Ctrl-C to Cancel, ENTER to Continue                           บ
echo     บ                                                                บ
echo     ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
pause > nul
cls
echo.
echo     ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo     บ                                                                บ
echo     บ  Before BOOTDISK continues, it will save a backup copy of your บ 
echo     บ  AUTOEXEC.BAT file on the disk in drive %1  The backup will be บ
echo     บ  named AUTOEXEC.B_K.                                           บ
echo     บ                                                                บ
echo     บ  Ctrl-C to Cancel, ENTER to Continue                           บ
echo     บ                                                                บ
echo     ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo
pause > nul
cls
echo.
echo     ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo     บ                                                                บ
echo     บ  Making AUTOEXEC.BAT backup...                                 บ
echo     บ                                                                บ
echo     ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
copy %1\autoexec.bat %1\autoexec.b_k >nul
goto CopyFiles

:MakeBakCon
cls
echo.
echo     ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo     บ                                                                บ
echo     บ  CONFIG.SYS already exists on the disk in drive %1  Do you     บ
echo     บ  want to continue?                                             บ
echo     บ                                                                บ
echo     บ  Ctrl-C to Cancel, ENTER to Continue                           บ
echo     บ                                                                บ
echo     ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
pause > nul
cls
echo.
echo     ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo     บ                                                                บ
echo     บ  Before BOOTDISK continues, it will save a backup copy of your บ 
echo     บ  CONFIG.SYS file on the disk in drive %1  The backup will be   บ
echo     บ  named CONFIG.B_K.                                             บ
echo     บ                                                                บ
echo     บ  Ctrl-C to Cancel, ENTER to Continue                           บ
echo     บ                                                                บ
echo     ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
pause > nul
cls
echo.
echo     ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo     บ                                                                บ
echo     บ  Making CONFIG.SYS backup...                                   บ
echo     บ                                                                บ
echo     ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
copy %1\config.sys %1\config.b_k >nul
goto CopyFiles

:MakeBakBoth
cls
echo.
echo     ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo     บ                                                                บ
echo     บ  CONFIG.SYS and AUTOEXEC.BAT already exist on the disk in      บ
echo     บ  drive %1. Do you want to continue?                            บ
echo     บ                                                                บ
echo     บ  Ctrl-C to Cancel, ENTER to Continue                           บ
echo     บ                                                                บ
echo     ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
pause > nul
cls
echo.
echo     ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo     บ                                                                บ
echo     บ  Before BOOTDISK continues, it will save backup copies of any  บ 
echo     บ  AUTOEXEC.BAT and CONFIG.SYS files on the disk in drive %1     บ
echo     บ  The backups will be named AUTOEXEC.B_K and CONFIG.B_K.        บ
echo     บ                                                                บ
echo     บ  Ctrl-C to Cancel, ENTER to Continue                           บ
echo     บ                                                                บ
echo     ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
pause > nul
cls
echo.
echo     ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo     บ                                                                บ
echo     บ  Making CONFIG.SYS and AUTOEXEC.BAT backups...                 บ
echo     บ                                                                บ
echo     ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
copy %1\config.sys %1\config.b_k >nul
copy %1\autoexec.bat %1\autoexec.b_k >nul
goto CopyFiles

:CopyFiles
echo.
echo.
echo.
echo     ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo     บ                                                                บ
echo     บ  Making Boot Disk on Drive %1 ...                              บ
echo     บ                                                                บ
echo     ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ

sys c: %1 >nul 
copy c:\koei_tmp\a_exec.bat %1\autoexec.bat >nul
copy c:\koei_tmp\c_fig.sys %1\config.sys >nul

if not exist %1\autoexec.bat goto BootError
if not exist %1\config.sys goto BootError
if not exist %1\command.com goto BootError 
goto BootOK

:BootOK
cls
echo. 
echo     ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo     บ                                                                บ
echo     บ  Please make certain that your OPERATION EUROPE DISK 1 is in   บ
echo     บ  your floppy drive and hit ENTER.                              บ 
echo     บ                                                                บ
echo     ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
pause > nul
:MasterCheck 
if exist install.bat goto Continue
cls
echo. 
echo     ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo     บ                                                                บ
echo     บ  This is not your OPERATION EUROPE DISK 1. Please remove the   บ
echo     บ  disk in your floppy drive, replace it with the correct disk,  บ 
echo     บ  and hit ENTER.                                                บ
echo     บ                                                                บ
echo     ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
pause > nul
goto MasterCheck

:Continue
cls
echo.
echo     ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo     บ                                                                บ
echo     บ  Your Boot Disk for "OPERATION EUROPE" has been successfully   บ
echo     บ  created.                                                      บ
echo     บ                                                                บ
echo     ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
pause 

cls
echo.
echo     ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo     บ                                                                บ
echo     บ  If you plan to use your mouse to play OPERATION EUROPE, don't บ
echo     บ  forget to install your MOUSE DRIVER before starting the game. บ
echo     บ                                                                บ
echo     บ  To install your mouse driver, go to the subdirectory where    บ
echo     บ  the mouse driver is located and type the mouse installation   บ
echo     บ  command.                                                      บ
echo     บ                                                                บ
echo     บ    Example: C:\MSMOUSE\MOUSE                                   บ
echo     บ                                                                บ
echo     บ                                                                บ
echo     ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
pause 

cls
echo.
echo     ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo     บ                                                                บ
echo     บ  If you have already installed OPERATION EUROPE, place your    บ
echo     บ  boot disk in the appropriate drive and reboot your machine.   บ
echo     บ  Then move to the directory where you installed OPERATION      บ
echo     บ  EUROPE and type KOEI.                                         บ
echo     บ                                                                บ
echo     บ  If you have yet to install OPERATION EUROPE, place your boot  บ
echo     บ  disk in the appropriate drive and reboot your machine. Then   บ
echo     บ  insert Disk 1 and type INSTALL.                               บ
echo     บ                                                                บ
echo     ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
pause 
goto End

:BadDrive
cls
echo.
echo     ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo     บ                                                                บ
echo     บ  Please specify the drive where you wish to create the Boot    บ
echo     บ  Disk in the following way:                                    บ
goto Example

:DriveNeeded
cls
echo. 
echo     ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo     บ                                                                บ
echo     บ  Please specify the drive where you wish to create the Boot    บ 
echo     บ  Disk.                                                         บ
echo     บ                                                                บ
echo     บ  For example:                                                  บ
goto Example
:Example
echo     บ                                                                บ 
echo     บ       BOOTDISK (floppy drive)                                  บ
echo     บ       BOOTDISK A:                                              บ
echo     บ                                                                บ
echo     ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
pause 
goto Fail

:BootError
cls
echo.
echo     ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo     บ                                                                บ 
echo     บ  ERROR:  Boot Disk creation was unsuccessful. This might be    บ
echo     บ          because your floppy disk is full or your system       บ
echo     บ          files do not exist on Drive C.                        บ
echo     บ                                                                บ
echo     ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
pause 
goto BootFail

:BootFail
cls
echo. 
echo     ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo     บ                                                                บ
echo     บ  Boot Disk creation has failed. Please refer to the section on บ
echo     บ  Making a Boot Disk on the enclosed card and try again. If you บ 
echo     บ  continue to have trouble, please call our Technical Support   บ 
echo     บ  Department for help. (See enclosed card.)                     บ 
echo     บ                                                                บ
echo     ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
pause 
goto InsertMaster

:Fail
cls
echo. 
echo     ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo     บ                                                                บ
echo     บ  Boot Disk creation has failed. Please refer to the section on บ
echo     บ  Making a Boot Disk on the enclosed card and try again. If you บ 
echo     บ  continue to have trouble, please call our Technical Support   บ 
echo     บ  Department for help. (See enclosed card.)                     บ 
echo     บ                                                                บ
echo     ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
goto End

:InsertMaster
cls
echo. 
echo     ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo     บ                                                                บ
echo     บ  Please make certain that your OPERATION EUROPE DISK 1 is in   บ
echo     บ  your floppy drive and hit ENTER.                              บ 
echo     บ                                                                บ
echo     ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
pause > nul
:MasterCheck2 
if exist install.bat goto End
cls
echo. 
echo     ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo     บ                                                                บ
echo     บ  This is not your OPERATION EUROPE DISK 1. Please remove the   บ
echo     บ  disk in your floppy drive, replace it with the correct disk,  บ 
echo     บ  and hit ENTER.                                                บ
echo     บ                                                                บ
echo     ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
pause > nul
goto MasterCheck2

:BadEnd
echo.
goto End

:End
echo.
echo on
