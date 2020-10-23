echo off
cls

if "%1" == "" goto DriveNeeded
goto MakeDirectory

:DriveNeeded
echo 
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ								บ
echo บ Please specify the destination path that you wish to install	บ
echo บ "THE TERMINATOR" to, for example:				บ
echo บ								บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
:Example
echo 
echo install c:\term	This will install to drive "C:" directory "TERM"
goto End

:MakeDirectory
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ			     					บ
echo บ THE TERMINATOR		Hard Disk Install Utility 	บ
echo บ			     					บ
echo บ This program will install all "THE TERMINATOR" files into the	บ
echo บ DESTINATION specified below.					บ
echo บ			     					บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo DESTINATION = %1
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ			     					บ
echo บ 1 - Install EGA						บ
echo บ 2 - Install VGA		     				บ
echo บ 3 - QUIT			     				บ
echo บ			     					บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo 
getdigit Please enter your choice : 
if errorlevel 3 goto End
if errorlevel 2 goto VGA
if errorlevel 1 goto EGA

rem *****************************************************************
rem **                      EGA INSTALL                            **
rem *****************************************************************
:EGA
cls
echo 

if exist %1\*.* goto ExistsEGA
mkdir %1
goto CopyEGA

:ExistsEGA
echo 
echo The DESTINATION directory already exists.
echo Press Ctrl-C if you don't want to overwrite the directory.
echo 
pause
cls
echo 

:CopyEGA
echo Copying Disk 1 files to %1.....
if not exist common.exe goto InstallError
common %1
copy term.exe %1
if not exist %1\term.exe goto InstallError

cls
echo 
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ			     					บ
echo บ Please insert Disk 2.						บ
echo บ			     					บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
pause
cls

echo Copying Disk 2 files to %1.....
if not exist ega.exe goto InstallError
ega %1
if not exist %1\ts.dcf goto InstallError
goto Complete

rem *****************************************************************
rem **                      VGA INSTALL                            **
rem *****************************************************************
:VGA
cls
echo 

if exist %1\*.* goto ExistsVGA
mkdir %1
goto CopyVGA

:ExistsVGA
echo 
echo The DESTINATION directory already exists.
echo Press Ctrl-C if you don't want to overwrite the directory.
echo 
pause
cls
echo 

:CopyVGA
echo Copying Disk 1 files to %1.....
if not exist common.exe goto InstallError
common %1
copy term.exe %1
if not exist %1\term.exe goto InstallError

cls
echo 
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ			     					บ
echo บ Please insert Disk 3.						บ
echo บ			     					บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
pause
cls

echo Copying Disk 3 files to %1.....
if not exist vga1.exe goto InstallError
vga1 %1
if not exist %1\net.dfb goto InstallError

cls
echo 
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ			     					บ
echo บ Please insert Disk 4.						บ
echo บ			     					บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
pause
cls

echo Copying Disk 4 files to %1.....
if not exist vga2.exe goto InstallError
vga2 %1
if not exist %1\ts.dfb goto InstallError


:Complete
echo 
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ			     					บ
echo บ Installation of "THE TERMINATOR" is complete.			บ
echo บ			     					บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo To run the game change the drive and path to %1
echo then type:
echo TERM [ADLIB or SBLASTER]
echo Please read your manual. At least the sections on
echo "Installation and StartUp" and "Questions and Answers".
echo 
goto End

:InstallError
echo  
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ			     					บ
echo บ Installation of "THE TERMINATOR" failed.			บ
echo บ This might be because your hard disk is full.			บ
echo บ			     					บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
:End
echo 
