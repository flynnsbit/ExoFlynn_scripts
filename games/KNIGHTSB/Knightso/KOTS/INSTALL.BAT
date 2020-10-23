echo off
cls

rem  check source drive specification

if %1a == a goto Usage
if %1 == a: goto DestDrive
if %1 == A: goto DestDrive
if %1 == b: goto DestDrive
if %1 == B: goto DestDrive
goto OutOfRange0

rem  check destination drive specification

:DestDrive
if %2a == a goto Usage
if %2 == c: goto Logo
if %2 == C: goto Logo
if %2 == d: goto Logo
if %2 == D: goto Logo
if %2 == e: goto Logo
if %2 == E: goto Logo
if %2 == f: goto Logo
if %2 == F: goto Logo
if %2 == g: goto Logo
if %2 == G: goto Logo
if %1 == h: goto Logo
if %1 == H: goto Logo
if %1 == i: goto Logo
if %1 == I: goto Logo
if %1 == j: goto Logo
if %1 == J: goto Logo
if %1 == k: goto Logo
if %1 == K: goto Logo
goto OutOfRange

:Logo
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                                                       บ
echo บ              KNIGHTS OF THE SKY: Installation Program                 บ
echo บ                                                                       บ
echo บ This batch file will install KNIGHTS OF THE SKY in the directory      บ
echo บ %2\MPS\KNIGHTS from drive %1. If that directory does not exist, it    บ
echo บ will be created.                                                      บ
echo บ                                                                       บ
echo บ To abort installation at any time, press Ctrl-Break then press 'Y'.   บ
echo บ                                                                       บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
pause

echo Creating directory %2\MPS\KNIGHTS

rem  test for existing KNIGHTS subdirectory
if exist %2\MPS\KNIGHTS\*.* goto ClearDir
goto NewDir

:ClearDir
rem  \MPS\KNIGHTS exists - clear directory
cls
echo 
echo The directory %2\MPS\KNIGHTS already exists. To clear out the old 
echo KNIGHTS files answer 'Y' to the following question. If you don't want
echo to install KNIGHTS into that directory, press Ctrl-Break.
erase %2\MPS\KNIGHTS\*.*
goto DiskA

:NewDir
rem  this installs new KNIGHTS subdirectory; errorlevel 0 means success
md %2\MPS
if not errorlevel 0 goto CantMakeDir
md %2\MPS\KNIGHTS
if not errorlevel 0 goto CantMakeDir

:DiskA
rem  this copies files from floppies into %2\MPS\KNIGHTS

rem  make sure Disk A is in source drive
if exist %1\KNIGHTS.COM goto CopyA
cls
echo 
echo Insert your KNIGHTS Disk A in drive %1
pause
goto DiskA

:CopyA
rem  copy Disk A files, including next batch file, to dest disk.

echo Copying KNIGHTS Disk A...
copy %1\*.* %2\MPS\KNIGHTS
if not exist %2\MPS\KNIGHTS\DS.EXE goto FileNotFound
copy %2\MPS\KNIGHTS\START.BAT %2\MPS\KNIGHTS.BAT
if not exist %2\MPS\KNIGHTS.BAT goto FileNotFound
if not exist %2\MPS\KNIGHTS\INSTALL2.BAT goto FileNotFound

rem  continue installation with 2nd batch file
%2\MPS\KNIGHTS\INSTALL2 %1 %2


rem     BATCH FILE ERRORS

rem     Missing parameters
:Usage
cls
echo 
echo To install KNIGHTS OF THE SKY, you must specify the drive with floppies
echo that you are installing FROM and the drive you are installing TO.
echo For example, if the floppies you are installing from are in floppy 
echo drive A: and you are installing to hard drive C:, type INSTALL A: C:
echo and press ENTER.
goto End

rem     Drive letter out of range     
:OutOfRange0
cls
echo 
echo Source Drive letter must be a letter from A to B followed by a colon.
goto End

rem     Drive letter out of range     
:OutOfRange
cls
echo 
echo Destination Drive letter must be a letter from C to K followed by a colon.
goto End

rem     Can't create directory
:CantMakeDir
cls
echo 
echo Can't create %2\MPS\KNIGHTS subdirectory. You must install KNIGHTS
echo manually.
goto End

rem     Install2 batch file not found
:FileNotFound
cls
echo 
echo Could not find all of the KNIGHTS files in %2\MPS\KNIGHTS subdirectory.
echo Drive %2 may not have enough room for installation.

:End
echo 
echo KNIGHTS OF THE SKY installation failed!
:done
