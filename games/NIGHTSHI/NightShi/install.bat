echo off

REM This install program copies to %1\NIGHT :
REM
REM From Disk 1:
REM IML.EXE
REM *.CMP                    must include DISK_1.CMP
REM
REM From Disk 2:
REM *.CMP                    must include DISK_2.CMP
REM
REM From Disk 3:
REM *.CMP                    must include DISK_3.CMP
REM
REM
REM A check is made after copying each disk that it has copied the correct
REM files, e.g. IML.EXE & DISK_1.CMP after copying disk 1 etc.

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
echo Please specify which drive to install Night Shift on, for example:
:Example
echo 
echo         install c:
goto End

:MakeDirectory
echo ��������������������������������������������������������������������������ͻ
echo �                                                                          �
echo �                Night Shift (TM) Hard Disk Install Utility                �
echo �                                                                          �
echo �                                                                          �
echo � This program will install all of the Night Shift files into a directory  �
echo � called "NIGHT" on drive %1.  If you do not wish to do this, then press   �
echo � Ctrl-C now.                                                              �
echo �                                                                          �
echo ��������������������������������������������������������������������������ͼ
echo 
pause
echo 

if exist %1\night\*.* goto DirectoryExists
mkdir %1\night
goto Inst1

:DirectoryExists
echo WARNING:  The directory %1\NIGHT already exists.
echo           Press Ctrl-C now if you don't want to overwrite the contents of
echo           that directory.
echo 
pause
echo 
del %1\night\*.cmp > NUL

:Inst1
if exist disk_1.cmp goto Copy1
echo Please insert Night Shift disk 1, then press any key to continue...
pause > NUL
goto Inst1
:Copy1

echo Copying files to %1\NIGHT...
copy iml.exe %1\night > NUL
copy *.cmp %1\night > NUL

if not exist %1\night\iml.exe goto InstError
if not exist %1\night\disk_1.cmp goto InstError

if exist %1\night\disk_2.cmp goto Insted2
:Inst2
if exist disk_2.cmp goto Copy2
echo Please insert Night Shift disk 2, then press any key to continue...
pause > NUL
goto Inst2
:Copy2

echo Copying files to %1\NIGHT...
copy *.cmp %1\night > NUL

if not exist %1\night\disk_2.cmp goto InstError

:Insted2
if exist %1\night\disk_3.cmp goto Insted3
:Inst3
if exist disk_3.cmp goto Copy3
echo Please insert Night Shift disk 3, then press any key to continue...
pause > NUL
goto Inst3
:Copy3

echo Copying files to %1\NIGHT...
copy *.cmp %1\night > NUL

if not exist %1\night\disk_3.cmp goto InstError

:Insted3

%1
cd %1\night
cls
echo ������������������������������������������������������������������������ͻ
echo �     Night Shift has been successfully installed onto your hard disk.   �
echo �                                                                        �
echo �     To run Night Shift, enter   CD \NIGHT                              �
echo �     then enter                  IML                                    �
echo �                                                                        �
echo �     You can also start Night Shift using the following options:        �
echo �                                                                        �
echo �     v      VGA graphics                                                �
echo �     m      MCGA graphics                                               �
echo �     e      EGA graphics                                                �
echo �     t      TANDY graphics                                              �
echo �     f      Run game in fast mode                                       �
echo �     z      Adjust for non-standard EGA cards                           �
echo �     2      Use 2 floppy drives                                         �
echo �     i      Normal sounds (internal speaker)                            �
echo �     a      AdLib Music Synthesizer or CMS/Soundblaster sounds          �
echo �     g      CMS/GameBlaster sounds                                      �
echo �     g1..g7 Force CMS card addresses                                    �
echo �     x      Tandy sounds                                                �
echo �     s      All sound effects & music OFF                               �
echo �                                                                        �
echo �     Example:   IML e a   - for EGA graphics and AdLib sounds           �
echo ������������������������������������������������������������������������ͼ
goto End

:InstError
echo ERROR:  Installation of Night Shift into %1\NIGHT was unsuccessful.
echo         This might be because your hard disk is full.  Night Shift
echo         needs at least 900K of free disk space.
:End
