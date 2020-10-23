echo off
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
echo Please specify which drive to install Pipe Mania on, for example:
:Example
echo 
echo         install c:
goto End

:MakeDirectory
echo ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                                                        บ
echo บ                Pipe Mania (TM) Hard Disk Install Utility               บ
echo บ                                                                        บ
echo บ                                                                        บ
echo บ This program will install all of the Pipe Mania files into a directory บ
echo บ called "PIPE" on drive %1.  If you do not wish to do this, then press  บ
echo บ Ctrl-C now.                                                            บ
echo บ                                                                        บ
echo ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo 
pause
echo 

if exist %1\pipe\*.* goto DirectoryExists
mkdir %1\pipe
goto CopyFiles

:DirectoryExists
echo WARNING:  The directory %1\PIPE already exists.  Press Ctrl-C
echo           now if you don't want to overwrite the contents of
echo           that directory.
echo 
pause
echo 

:CopyFiles
echo Copying files to %1\PIPE...
copy pipe.exe %1\pipe > NUL
copy readme %1\pipe > NUL
copy *.pic %1\pipe > NUL
copy *.art %1\pipe > NUL
copy *.war %1\pipe > NUL

if not exist %1\pipe\pipe.exe goto InstallError
if not exist %1\pipe\logo.pic goto InstallError
if not exist %1\pipe\resivoir.art goto InstallError
if not exist %1\pipe\whip2.war goto InstallError
%1
cd %1\pipe
cls
echo ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                                                        บ
echo บ     Pipe Mania has been successfully installed onto your hard disk.    บ
echo บ                                                                        บ
echo บ     To run Pipe Mania, enter   CD \PIPE                                บ
echo บ     then enter                 PIPE                                    บ
echo บ                                                                        บ
echo บ     You can also start Pipe Mania using the following options:         บ
echo บ                                                                        บ
echo บ                      C    Use CGA graphics                             บ
echo บ                      E    Use EGA graphics                             บ
echo บ                      V    Use VGA graphics                             บ
echo บ                      M    Use MCGA graphics                            บ
echo บ                      T    Use TANDY graphics                           บ
echo บ                      H    Use Hercules graphics                        บ
echo บ                                                                        บ
echo บ     Example:   PIPE E                                                  บ
echo บ                                                                        บ
echo ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
goto End

:InstallError
echo ERROR:  Installation of Pipe Mania into %1\PIPE was unsuccessful.
echo         This might be because your hard disk is full.  Pipe Mania
echo         needs at least 335K of free disk space.
:End
echo 
