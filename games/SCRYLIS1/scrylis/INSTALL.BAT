@echo off
cls

if %0==a:install goto adrive
if %0==A:install goto adrive
if %0==A:INSTALL goto adrive
if %0==a:INSTALL goto adrive

if %0==b:install goto bdrive
if %0==B:install goto bdrive
if %0==B:INSTALL goto bdrive
if %0==b:INSTALL goto bdrive

if %0==install goto doinstall
if %0==INSTALL goto doinstall

echo Please switch to the drive you wish to install from before
echo starting install.	For example, to install from the B: drive,
echo Enter	   B:
echo Then enter    INSTALL %1
goto End

:adrive
A:
goto doinstall

:bdrive
B:
goto doinstall

:doinstall
if "%1"=="" goto DriveNeeded
if %1==c: goto MakeDir
if %1==C: goto MakeDir
if %1==d: goto MakeDir
if %1==D: goto MakeDir
if %1==e: goto MakeDir
if %1==E: goto MakeDir
if %1==f: goto MakeDir
if %1==F: goto MakeDir
if %1==g: goto MakeDir
if %1==G: goto MakeDir
if %1==h: goto MakeDir
if %1==H: goto MakeDir
if %1==i: goto MakeDir
if %1==I: goto MakeDir
if %1==j: goto MakeDir
if %1==J: goto MakeDir
if %1==k: goto MakeDir
if %1==K: goto MakeDir
if %1==l: goto MakeDir
if %1==L: goto MakeDir
if %1==m: goto MakeDir
if %1==M: goto MakeDir
if %1==n: goto MakeDir
if %1==N: goto MakeDir
if %1==o: goto MakeDir
if %1==O: goto MakeDir
if %1==p: goto MakeDir
if %1==P: goto MakeDir

:InvalidDrive
echo "%1" is an invalid drive name.  Please use the drive's letter
echo followed by a colon:
goto Example

:DriveNeeded
echo Please specify which drive to install "SCRYLIS" on, for example:
:Example
echo ÿ
echo	     install c:
goto End

:MakeDir
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³		   Installation of "SCRYLIS" in the hard disk                 ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
echo ÿ
pause
echo ÿ

if not exist %1\JUEGOS\SCRYLIS\*.* goto CopyFiles

:DirExists
echo WARNING: The directory %1\JUEGOS\SCRYLIS already exists. Press Ctrl-C now
echo		 if you don't want to overwrite the contents of that directory.
echo ÿ
pause
echo ÿ

:CopyFiles
echo Copying "Disk" files to %1\JUEGOS\SCRYLIS . . .
XCOPY *.* %1\JUEGOS\SCRYLIS\ /S
%1
chdir %1\JUEGOS\SCRYLIS
cls
:end
