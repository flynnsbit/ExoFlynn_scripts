echo off
cls

if "%1" == "" goto DriveNeeded
if %1 == a: goto DestDrive
if %1 == A: goto DestDrive
if %1 == b: goto DestDrive
if %1 == B: goto DestDrive

:DestDrive
if "%2" == "" goto DriveNeeded
if %2 == c: goto MakeDirectory
if %2 == C: goto MakeDirectory
if %2 == d: goto MakeDirectory
if %2 == D: goto MakeDirectory
if %2 == e: goto MakeDirectory
if %2 == E: goto MakeDirectory

:InvalidDrive
echo "%1" "%2" is not a valid choice.  Please use each drive's
echo  letter followed by a colon:
goto Example

:DriveNeeded
echo Please specify the source drive (A: or B:) and the drive you wish
echo to install Over the Net on (C: through E:). For example:

:Example
echo 
echo                         install a: c:
echo 
goto End

:MakeDirectory
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                                                             บ
echo บ                 Over the Net Hard Disk Installation Utility                 บ
echo บ                                                                             บ
echo บ                                                                             บ
echo บ  This program will install all of the Over the Net files into a directory   บ
echo บ  called "NET" on drive %2.  If you do not wish to do this, please press     บ
echo บ  Ctrl-C now.                                                                บ
echo บ                                                                             บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo 
pause
echo 

if exist %2\net\*.* goto DirectoryExists
echo Making directory %2\NET...
mkdir %2\net
goto Inst1

:DirectoryExists
cls
echo 
echo 
echo 
echo 
echo 
echo 
echo 
echo 
echo 
echo 
echo WARNING: The directory %2\NET already exists.
echo          If you choose to continue, some files may be overwritten! 
echo          Press Ctrl-C NOW if you wish to abort this installation.
echo 
pause
cls

:Inst1
if exist %1\otn.exe goto Copy1
echo Please insert the Over the Net VGA Disk #1.
pause
echo 
goto Inst1

:Copy1
echo Copying files to %2\NET...
%2
cd %2\net
copy %1\*.* >NUL
if not exist %2\NET\otn.exe goto InstError 
echo 

:swap
echo Please insert the Over the Net VGA Disk #2.
pause
if not exist %1\FIJI.LBM goto swap
goto copy2

:Copy2
echo Copying image files to %2\NET...
copy %1\*.* >NUL
if not exist %2\NET\fiji.lbm goto InstError 
echo 

:Insted3
cls
%2
cd %2\
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                                                             บ
echo บ       Over the Net has been successfully installed onto your hard disk.     บ
echo บ                                                                             บ
echo บ       To run Over the Net, type:  CD\NET [ENTER].                           บ
echo บ                       then type:  OTN [ENTER]                               บ
echo บ                                                                             บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
goto End

:InstError
echo 
echo ERROR: Installation of Over the Net into %2\NET was unsuccessful!
echo        This might be because your hard disk is full.  Over the Net
echo        requires at least 700K of free disk space.
echo 
%1
:End
