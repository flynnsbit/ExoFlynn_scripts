echo off
CLS
ECHO ***            DOLPHIN BOATING SIMULATOR                 ***
echo ***          INSTALL1  INSTALLATION  ROUTINE             ***
echo ***     Copyright Dolphin Marine Systems, Inc. 1988      ***
echo This routine will perform the Installation and configuration
echo on systems with dual Diskettes, and AT LEAST 256kb of memory.
echo USE BACKUP DISKETTES ONLY! This routine writes on the MASTER!
echo If this is not correct, or if you have NOT MADE BACKUP COPIES
echo of your diskettes...hit [cntl][break] and start again !
echo Please put DOS Disk in Drive A: and BACKUP MASTER DISK in B:
pause
b:
copy B:BOATING1 B:BOATING.BAT
copy B:BOATINH1 B:BOATINH.BAT
instalf1
