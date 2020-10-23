echo off
REM set path=
if not exist readme.txt goto skpread
readfile readme.txt
:skpread
rem ------------------ GET THE SOURCE DRIVE
:getsrc
cls
ECHO If you are not installing to a hard drive, then you must have 3 blank
ECHO 5.25-inch or 3.5-inch floppys prepared before installing.
echo .
echo .
ECHO Continue? (PRESS [y] TO CONTINUE WITH INSTALLATION. Any other key aborts.)
echo .
GETUSER
if not errorlevel 121 goto end
set sd=5
if exist three.dsk set sd=3

set drv=2
set src=
set dst=
set three=n
echo Do you have only one floppy drive and NO hard disk drive?
echo (Press [y] for YES, or [n] for NO.)
getuser
if errorlevel 121 goto ramit
goto noram
rem ********************************************************
rem -----------  SETUP FOR RAMDRIVE INSTALLATION -----------
:RAMIT
cls
echo .
echo If you haven't set up a ramdrive, then quit this install, edit your
echo CONFIG.SYS file, re-boot your computer, make a note of the ramdrive
echo letter, then run this install again.
echo .
echo Abort installation? (Y/N)
GETUSER
if errorlevel 121 goto end
echo NOTE: Reference to "Disk with batch file" is the DISTRIBUTION disk #1.
echo .      (the distribution disks ares the ones you bought)
pause
echo Enter the RAMDRIVE letter (enter [q] to quit).
getuser
if errorlevel 98 set ramd=B:
if errorlevel 99 set ramd=C:
if errorlevel 100 set ramd=D:
if errorlevel 101 set ramd=E:
if errorlevel 102 set ramd=F:
if errorlevel 103 goto END
set dst=B:
set src=A:
set drv=1
%src%

if not exist %src%command.com goto nocom
echo copying COMMAND.COM to RAM DRIVE %ramd%...
COPY %src%COMMAND.COM %ramd%
copy %src%installf.bat %ramd%

SET comspec=%ramd%\COMMAND.COM
set path=%ramd%\;%SRC%;%dst%\
:getd1
echo .
ECHO Please place distribution disk #1 in drive %SRC%
echo (The distribution disks are the disks you bought)
echo .
pause
if not exist %src%README.TXT goto getd1

GOTO FLOP

rem ---- Has More than 1 floppy!
:noram
echo enter source drive letter (no ':')
getuser
if errorlevel 99 goto getsrc
if errorlevel 98 goto srcb
if not errorlevel 97 goto getsrc
set src=a:
echo %src%
goto getdst
:srcb
set src=b:
echo %src%
rem ------------------ GET THE DESTINATION DRIVE
:getdst
echo .
echo enter the destination drive letter
REM echo (if only one floppy drive and no hard disk enter [a])
getuser
if errorlevel 97 set dst=a:
if errorlevel 98 SET DST=b:
if errorlevel 99 set dst=c:
if errorlevel 100 set dst=d:
if errorlevel 101 set dst=e:
if errorlevel 99 goto hard


:dstb
rem ------------------ FLOPPY INSTALL

:flop
%src%
echo .
echo is drive %dst% a 3.5-inch or ...
echo is capacity of drive %dst% greater than 360 Kilobytes?
echo (Press [y] for yes or [n] for no)
set three=n
getuser
if errorlevel 121 set three=y
CLS
echo .
set confirm=n
echo .
Echo SOURCE DRIVE........... %src%
echo DESTINATION DRIVE...... %dst%
if %three%==y echo DRIVE %dst% HAS STORAGE CAPACITY GREATER THAN 360K.
if %drv%==1 ECHO YOU ARE NOT INSTALLING TO A HARD DISK.
echo .
echo Is the above correct? (enter [y] for yes or [n] for no)
GETUSER
if errorlevel 121 set confirm=y


if %confirm%==n goto getsrc
%ramd%\installf 1 2 3 4 5 6 7 8

rem ------------------ HARD DISK INSTALL
:hard
set three=n
CLS
echo .
set confirm=n
Echo SOURCE DRIVE........... %src%
echo DESTINATION DRIVE...... %dst%
if %three%==y echo DRIVE %dst% HAS STORAGE CAPACITY GREATER THAN 360K.
if %drv%==2 ECHO DRIVE %DST% IS A HARD DISK.
echo .
echo Is the above correct? (enter [y] for yes or [n] for no)
GETUSER
if errorlevel 121 set confirm=y

if %confirm%==n goto getsrc

%DST%
cd\

md NS
cd NS
copy %SRC%READ*.*
%SRC%ns1

:disk2
IF %sd%==3 goto HCONT
set NAME=2
echo Please insert disk #%NAME% in drive %SRC%
pause
if not exist %SRC%ns2.exe goto disk2

echo INSTALLING . . .
:HCONT
del gxpld.spr
%SRC%ns2
del gxpld.spr
del hinstall.bat
%SRC%ns3

echo .
echo INSTALL COMPLETE
ECHO Type NS [enter] from the \NS directory to run NAVY SEAL
echo .
goto END

:nocom
echo .
echo ERROR: You must copy the file COMMAND.COM from your DOS disk to the
echo installation disk (distribution disk #1).
echo .
echo INSTALL CANCELLED

:END
rem ------ REMOVE ENVIRONMENT VARIABLES
set src=
set dst=
set three=
set confirm=
set drv=
set name=
SET sd=
