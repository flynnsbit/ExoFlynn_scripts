echo off
REM Multiple Disk install program, part 1, 4 disk version
cls

if "%1" == "" goto DriveNeeded
if %1 == c: goto MakeDirectory
if %1 == C: goto MakeDirectory
if %1 == d: goto MakeDirectory
if %1 == D: goto MakeDirectory
if %1 == e: goto MakeDirectory
if %1 == E: goto MakeDirectory
if %1 == f: goto MakeDirectory
if %1 == F: goto MakeDirectory
if %1 == g: goto MakeDirectory
if %1 == G: goto MakeDirectory
if %1 == h: goto MakeDirectory
if %1 == H: goto MakeDirectory
if %1 == i: goto MakeDirectory
if %1 == I: goto MakeDirectory
if %1 == j: goto MakeDirectory
if %1 == J: goto MakeDirectory
if %1 == k: goto MakeDirectory
if %1 == K: goto MakeDirectory
if %1 == l: goto MakeDirectory
if %1 == L: goto MakeDirectory
if %1 == m: goto MakeDirectory
if %1 == M: goto MakeDirectory
if %1 == n: goto MakeDirectory
if %1 == N: goto MakeDirectory
if %1 == o: goto MakeDirectory
if %1 == O: goto MakeDirectory
if %1 == p: goto MakeDirectory
if %1 == P: goto MakeDirectory

:InvalidDrive
echo "%1" is an invalid drive name.  Please use the drive's letter
echo followed by a colon:
goto Example

:DriveNeeded
echo Please specify which drive to install "Their Finest Hour" on,
echo for example:
:Example
echo 
echo         install c:
goto End

:MakeDirectory
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                                               บ
echo บ                        THEIR FINEST HOUR:                     บ
echo บ                    The Battle of Britain (TM)                 บ
echo บ                                                               บ
echo บ                    Hard Disk Install Utility                  บ
echo บ                                                               บ
echo บ                                                               บ
echo บ This program will install all "Their Finest Hour" files into  บ
echo บ a directory called "BOB1940" on drive %1.  If you do not wish บ
echo บ to do this, then press Ctrl-C now.                            บ
echo บ                                                               บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo 
pause
echo 

if exist %1\BOB1940\*.* goto DirectoryExists
mkdir %1\BOB1940
goto CopyFiles

:DirectoryExists
echo WARNING:  The directory %1\BOB1940 already exists.  Press Ctrl-C
echo           now if you don't want to overwrite the contents of
echo           that directory.
echo 
pause
echo 

:CopyFiles
echo Setting up subdirectories...
mkdir %1\BOB1940\FLTS
mkdir %1\BOB1940\SCREENS
mkdir %1\BOB1940\PI
echo Copying Disk 1 files to %1\BOB1940...
copy *.* %1\BOB1940 > NUL

if not exist %1\BOB1940\bob.exe goto InstallError
if not exist %1\BOB1940\wtrfx1s.pac goto InstallError

%1
cd %1\BOB1940
install4 %1

goto End

:InstallError
echo ERROR:  Installation of "Their Finest Hour" into %1\BOB1940 was unsuccessful.
echo         This might be because your hard disk is full.  "Their Finest Hour"
echo         needs at least 1,260K of free disk space.
:End
echo 
