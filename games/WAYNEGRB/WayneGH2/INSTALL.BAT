echo off
cls

if "%2" == "" goto DriveNeeded
if %2 == c: goto MakeDirectory
if %2 == C: goto MakeDirectory
if %2 == d: goto MakeDirectory
if %2 == D: goto MakeDirectory
if %2 == e: goto MakeDirectory
if %2 == E: goto MakeDirectory
if %2 == f: goto MakeDirectory
if %2 == F: goto MakeDirectory
if %2 == g: goto MakeDirectory
if %2 == G: goto MakeDirectory
if %2 == h: goto MakeDirectory
if %2 == H: goto MakeDirectory
if %2 == i: goto MakeDirectory
if %2 == I: goto MakeDirectory
if %2 == j: goto MakeDirectory
if %2 == J: goto MakeDirectory
if %2 == k: goto MakeDirectory
if %2 == K: goto MakeDirectory
if %2 == l: goto MakeDirectory
if %2 == L: goto MakeDirectory
if %2 == m: goto MakeDirectory
if %2 == M: goto MakeDirectory
if %2 == n: goto MakeDirectory
if %2 == N: goto MakeDirectory
if %2 == o: goto MakeDirectory
if %2 == O: goto MakeDirectory
if %2 == p: goto MakeDirectory
if %2 == P: goto MakeDirectory

:InvalidDrive
echo "%2" is an invalid drive name.  Please use the drive's letter
echo followed by a colon:
goto Example

:DriveNeeded
echo Please specify which drive to install from, and which drive 
echo to install "Wayne Gretzky Hockey II" to, for example:
:Example
echo 
echo         install (from_drive) (to_drive)
echo         install a: c:
goto End

:MakeDirectory
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                                               บ
echo บ                     WAYNE GRETZKY HOCKEY II                   บ
echo บ                                                               บ
echo บ                    Hard Disk Install Utility                  บ
echo บ                                                               บ
echo บ                                                               บ
echo บ This program will install all "Wayne Gretzky Hockey II" files บ
echo บ into a directory called "WGHII" on drive %2.  If you do not   บ
echo บ want to do this, then press Ctrl-C now.                       บ
echo บ                                                               บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo 
pause
echo 

if exist %2\WGHII\*.* goto DirectoryExists
mkdir %2\WGHII
goto CopyFiles

:DirectoryExists
echo WARNING:  The directory %2\WGHII already exists.  Press Ctrl-C
echo           now if you don't want to overwrite the contents of
echo           that directory.
echo 
pause
echo 

:CopyFiles
echo Setting up subdirectories...
mkdir %2\WGHII\COMMON
mkdir %2\WGHII\DATA
mkdir %2\WGHII\CGADATA
echo Copying Disk 1 files to %2\WGHII...
copy %1\common\*.* %2\WGHII\common > NUL
copy %1\data\*.* %2\WGHII\data > NUL
copy %1\cgadata\*.* %2\WGHII\cgadata > NUL
copy %1\*.* %2\WGHII > NUL

if not exist %2\WGHII\data\wayne.img goto InstallError
if not exist %2\WGHII\cgadata\xcheck.seq goto InstallError
if not exist %2\WGHII\common\whistle.voc goto InstallError
if not exist %2\WGHII\intro.exe goto InstallError

%2
cd %2\WGHII
install2 %1 %2

goto End

:InstallError
echo ERROR:  Installation of "Wayne Gretzky Hockey II" into %2\WGHII was unsuccessful.
echo         This might be because your hard disk is full.
:End
echo 
