@echo off
cls

if "%1" == "" goto DriveNeeded
if "%1" == "A:" goto MakeBootDisk
if "%1" == "a:" goto MakeBootDisk 
goto BadDrive

:MakeBootDisk
echo.
echo     ����������������������������������������������������������������ͻ
echo     �                                                                �
echo     �           OPERATION EUROPE  PATH TO VICTORY 1939-45            � 
echo     �                                                                �
echo     �                     Boot Disk Creation                         �
echo     �                                                                �
echo     �                                                                �
echo     �  This program will copy all the necessary files to make a      �
echo     �  working Boot Disk.                                            �
echo     �                                                                �
echo     �  If you do not want to create a Boot Disk, then press          �
echo     �  Ctrl-C now.                                                   �
echo     �                                                                �
echo     ����������������������������������������������������������������ͼ
echo. 
pause > nul
cls
echo. 
echo     ����������������������������������������������������������������ͻ
echo     �                                                                �
echo     �  Please put a formatted diskette in drive %1 and hit ENTER.    �
echo     �                                                                �
echo     ����������������������������������������������������������������ͼ
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
echo     ����������������������������������������������������������������ͻ
echo     �                                                                �
echo     �  AUTOEXEC.BAT already exists on the disk in drive %1  Do you   �
echo     �  want to continue?                                             �
echo     �                                                                �
echo     �  Ctrl-C to Cancel, ENTER to Continue                           �
echo     �                                                                �
echo     ����������������������������������������������������������������ͼ
echo.
pause > nul
cls
echo.
echo     ����������������������������������������������������������������ͻ
echo     �                                                                �
echo     �  Before BOOTDISK continues, it will save a backup copy of your � 
echo     �  AUTOEXEC.BAT file on the disk in drive %1  The backup will be �
echo     �  named AUTOEXEC.B_K.                                           �
echo     �                                                                �
echo     �  Ctrl-C to Cancel, ENTER to Continue                           �
echo     �                                                                �
echo     ����������������������������������������������������������������ͼ
echo
pause > nul
cls
echo.
echo     ����������������������������������������������������������������ͻ
echo     �                                                                �
echo     �  Making AUTOEXEC.BAT backup...                                 �
echo     �                                                                �
echo     ����������������������������������������������������������������ͼ
copy %1\autoexec.bat %1\autoexec.b_k >nul
goto CopyFiles

:MakeBakCon
cls
echo.
echo     ����������������������������������������������������������������ͻ
echo     �                                                                �
echo     �  CONFIG.SYS already exists on the disk in drive %1  Do you     �
echo     �  want to continue?                                             �
echo     �                                                                �
echo     �  Ctrl-C to Cancel, ENTER to Continue                           �
echo     �                                                                �
echo     ����������������������������������������������������������������ͼ
echo.
pause > nul
cls
echo.
echo     ����������������������������������������������������������������ͻ
echo     �                                                                �
echo     �  Before BOOTDISK continues, it will save a backup copy of your � 
echo     �  CONFIG.SYS file on the disk in drive %1  The backup will be   �
echo     �  named CONFIG.B_K.                                             �
echo     �                                                                �
echo     �  Ctrl-C to Cancel, ENTER to Continue                           �
echo     �                                                                �
echo     ����������������������������������������������������������������ͼ
echo.
pause > nul
cls
echo.
echo     ����������������������������������������������������������������ͻ
echo     �                                                                �
echo     �  Making CONFIG.SYS backup...                                   �
echo     �                                                                �
echo     ����������������������������������������������������������������ͼ
copy %1\config.sys %1\config.b_k >nul
goto CopyFiles

:MakeBakBoth
cls
echo.
echo     ����������������������������������������������������������������ͻ
echo     �                                                                �
echo     �  CONFIG.SYS and AUTOEXEC.BAT already exist on the disk in      �
echo     �  drive %1. Do you want to continue?                            �
echo     �                                                                �
echo     �  Ctrl-C to Cancel, ENTER to Continue                           �
echo     �                                                                �
echo     ����������������������������������������������������������������ͼ
echo.
pause > nul
cls
echo.
echo     ����������������������������������������������������������������ͻ
echo     �                                                                �
echo     �  Before BOOTDISK continues, it will save backup copies of any  � 
echo     �  AUTOEXEC.BAT and CONFIG.SYS files on the disk in drive %1     �
echo     �  The backups will be named AUTOEXEC.B_K and CONFIG.B_K.        �
echo     �                                                                �
echo     �  Ctrl-C to Cancel, ENTER to Continue                           �
echo     �                                                                �
echo     ����������������������������������������������������������������ͼ
echo.
pause > nul
cls
echo.
echo     ����������������������������������������������������������������ͻ
echo     �                                                                �
echo     �  Making CONFIG.SYS and AUTOEXEC.BAT backups...                 �
echo     �                                                                �
echo     ����������������������������������������������������������������ͼ
copy %1\config.sys %1\config.b_k >nul
copy %1\autoexec.bat %1\autoexec.b_k >nul
goto CopyFiles

:CopyFiles
echo.
echo.
echo.
echo     ����������������������������������������������������������������ͻ
echo     �                                                                �
echo     �  Making Boot Disk on Drive %1 ...                              �
echo     �                                                                �
echo     ����������������������������������������������������������������ͼ

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
echo     ����������������������������������������������������������������ͻ
echo     �                                                                �
echo     �  Please make certain that your OPERATION EUROPE DISK 1 is in   �
echo     �  your floppy drive and hit ENTER.                              � 
echo     �                                                                �
echo     ����������������������������������������������������������������ͼ
echo.
pause > nul
:MasterCheck 
if exist install.bat goto Continue
cls
echo. 
echo     ����������������������������������������������������������������ͻ
echo     �                                                                �
echo     �  This is not your OPERATION EUROPE DISK 1. Please remove the   �
echo     �  disk in your floppy drive, replace it with the correct disk,  � 
echo     �  and hit ENTER.                                                �
echo     �                                                                �
echo     ����������������������������������������������������������������ͼ
echo.
pause > nul
goto MasterCheck

:Continue
cls
echo.
echo     ����������������������������������������������������������������ͻ
echo     �                                                                �
echo     �  Your Boot Disk for "OPERATION EUROPE" has been successfully   �
echo     �  created.                                                      �
echo     �                                                                �
echo     ����������������������������������������������������������������ͼ
echo.
pause 

cls
echo.
echo     ����������������������������������������������������������������ͻ
echo     �                                                                �
echo     �  If you plan to use your mouse to play OPERATION EUROPE, don't �
echo     �  forget to install your MOUSE DRIVER before starting the game. �
echo     �                                                                �
echo     �  To install your mouse driver, go to the subdirectory where    �
echo     �  the mouse driver is located and type the mouse installation   �
echo     �  command.                                                      �
echo     �                                                                �
echo     �    Example: C:\MSMOUSE\MOUSE                                   �
echo     �                                                                �
echo     �                                                                �
echo     ����������������������������������������������������������������ͼ
echo.
pause 

cls
echo.
echo     ����������������������������������������������������������������ͻ
echo     �                                                                �
echo     �  If you have already installed OPERATION EUROPE, place your    �
echo     �  boot disk in the appropriate drive and reboot your machine.   �
echo     �  Then move to the directory where you installed OPERATION      �
echo     �  EUROPE and type KOEI.                                         �
echo     �                                                                �
echo     �  If you have yet to install OPERATION EUROPE, place your boot  �
echo     �  disk in the appropriate drive and reboot your machine. Then   �
echo     �  insert Disk 1 and type INSTALL.                               �
echo     �                                                                �
echo     ����������������������������������������������������������������ͼ
echo.
pause 
goto End

:BadDrive
cls
echo.
echo     ����������������������������������������������������������������ͻ
echo     �                                                                �
echo     �  Please specify the drive where you wish to create the Boot    �
echo     �  Disk in the following way:                                    �
goto Example

:DriveNeeded
cls
echo. 
echo     ����������������������������������������������������������������ͻ
echo     �                                                                �
echo     �  Please specify the drive where you wish to create the Boot    � 
echo     �  Disk.                                                         �
echo     �                                                                �
echo     �  For example:                                                  �
goto Example
:Example
echo     �                                                                � 
echo     �       BOOTDISK (floppy drive)                                  �
echo     �       BOOTDISK A:                                              �
echo     �                                                                �
echo     ����������������������������������������������������������������ͼ
echo.
pause 
goto Fail

:BootError
cls
echo.
echo     ����������������������������������������������������������������ͻ
echo     �                                                                � 
echo     �  ERROR:  Boot Disk creation was unsuccessful. This might be    �
echo     �          because your floppy disk is full or your system       �
echo     �          files do not exist on Drive C.                        �
echo     �                                                                �
echo     ����������������������������������������������������������������ͼ
echo.
pause 
goto BootFail

:BootFail
cls
echo. 
echo     ����������������������������������������������������������������ͻ
echo     �                                                                �
echo     �  Boot Disk creation has failed. Please refer to the section on �
echo     �  Making a Boot Disk on the enclosed card and try again. If you � 
echo     �  continue to have trouble, please call our Technical Support   � 
echo     �  Department for help. (See enclosed card.)                     � 
echo     �                                                                �
echo     ����������������������������������������������������������������ͼ
echo.
pause 
goto InsertMaster

:Fail
cls
echo. 
echo     ����������������������������������������������������������������ͻ
echo     �                                                                �
echo     �  Boot Disk creation has failed. Please refer to the section on �
echo     �  Making a Boot Disk on the enclosed card and try again. If you � 
echo     �  continue to have trouble, please call our Technical Support   � 
echo     �  Department for help. (See enclosed card.)                     � 
echo     �                                                                �
echo     ����������������������������������������������������������������ͼ
echo.
goto End

:InsertMaster
cls
echo. 
echo     ����������������������������������������������������������������ͻ
echo     �                                                                �
echo     �  Please make certain that your OPERATION EUROPE DISK 1 is in   �
echo     �  your floppy drive and hit ENTER.                              � 
echo     �                                                                �
echo     ����������������������������������������������������������������ͼ
echo.
pause > nul
:MasterCheck2 
if exist install.bat goto End
cls
echo. 
echo     ����������������������������������������������������������������ͻ
echo     �                                                                �
echo     �  This is not your OPERATION EUROPE DISK 1. Please remove the   �
echo     �  disk in your floppy drive, replace it with the correct disk,  � 
echo     �  and hit ENTER.                                                �
echo     �                                                                �
echo     ����������������������������������������������������������������ͼ
echo.
pause > nul
goto MasterCheck2

:BadEnd
echo.
goto End

:End
echo.
echo on