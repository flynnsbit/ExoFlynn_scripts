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
echo Please specify which drive to install "Legends of Valour" on,
echo for example:
:Example
echo 
echo         install c:
goto Exit

:MakeDirectory
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                                               บ
echo บ                      Legends of Valour                        บ
echo บ                                                               บ
echo บ                    Hard Disk Install Utility                  บ
echo บ                                                               บ
echo บ                                                               บ
echo บ This program will install all "Legends of Valour" files into  บ
echo บ a directory called "LOV" on drive %1.  If you do not wish     บ
echo บ to do this, then press Ctrl-C now.                            บ
echo บ                                                               บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo 
pause
echo 

if exist %1\LOV\*.* goto DirectoryExists
mkdir %1\LOV
goto CopyFiles

:DirectoryExists
echo WARNING:  The directory %1\LOV already exists.  Press Ctrl-C
echo           now if you don't want to overwrite the contents of
echo           that directory.
echo 
pause
echo 

:CopyFiles
echo Copying files to %1\LOV...
copy *.* %1\LOV > NUL
:disk2
echo Please insert Legends of Valour - Disk 2
pause
if not exist disk2.exe goto disk2
echo Please wait, for me to copy the files....
copy *.* %1\LOV > NUL
:disk3
echo Please insert Legends of Valour - Disk 3
pause
if not exist disk3.exe goto disk3
echo Please wait, for me to copy the files....
copy *.* %1\LOV > NUL
:disk4
echo Please insert Legends of Valour - Disk 4
pause
if not exist disk4.exe goto disk4
echo Please wait, for me to copy the files....
copy *.* %1\LOV > NUL


%1
cd %1\LOV
disk1.exe
disk2.exe
disk3.exe
disk4.exe
del disk*.exe >NUL

goto End

:InstallError
echo ERROR:  Installation of "Legends of Valour" into %1\LOV was unsuccessful.
echo         This might be because your hard disk is full.  
:End

cls
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                                                 บ
echo บ  "Legends of Valour" has been successfully installed onto your  บ
echo บ  hard disk.                                                     บ
echo บ                                                                 บ
echo บ  To run "Legends of Valour", enter  CD \LOV                     บ
echo บ  then enter                         LOV                         บ
echo บ                                                                 บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
:Exit
echo 
