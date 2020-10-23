echo off
CLS
if "%1"=="C:" goto START
if "%1"=="c:" goto START
if "%1"=="D:" goto START
if "%1"=="d:" goto START
if "%1"=="E:" goto START
if "%1"=="e:" goto START
if "%1"=="F:" goto START
if "%1"=="f:" goto START
INSTALL C:
:START
echo ***      DOLPHIN BOATING SIMULATOR III        ***
echo ***      HARD DISK (%1) INSTALL ROUTINE       ***
echo ***  Copyright Dolphin Marine Systems, Inc.   ***
ECHO  
echo This routine creates a DOLPHIN directory on hard disk %1
echo & copies BOTH MASTERS & FIRST VOYAGE disk into Directory.
echo If this is not right, hit [cntl]+[brk] and start over.
pause
if exist dmv6cntl goto BEGIN
INSTERR
:BEGIN
echo Creating DOLPHIN directory on %1
mkdir %1\dolphin
echo Copying MASTER DISK #1 to Directory %1\dolphin
copy *.* %1\dolphin
if exist %1\dolphin\dmv6cntl goto AOK1
echo Cannot find dmv6cntl from MASTER #1.
INSTERR
:AOK1
echo MASTER DISK #1 copied, insert MASTER DISK #2.
PAUSE
echo Copying MASTER DISK #2 to Directory %1\dolphin
copy *.* %1\dolphin
if exist %1\dolphin\dmv6d001 goto AOK2
echo Cannot find dmv6d001 from MASTER #2.
INSTERR
:AOK2
echo BOTH MASTER DISKS copied, insert VOYAGE DISK #1.
PAUSE
echo Copying VOYAGE DISK #1 to Directory %1\dolphin
copy *.* %1\dolphin
if exist %1\dolphin\dmvc0010.pic goto ENDB
echo Cannot find VOYAGE DISK files.
INSTERR
:ENDB
cd %1\dolphin
dir %1\dolphin\d*.*/w
echo If there are at least 100 files in the directory, and if
echo there were NO BAD COMMAND messages, then INSTALL is done!
echo Switch to %1\DOLPHIN directory, & type BOAT3 to run.
