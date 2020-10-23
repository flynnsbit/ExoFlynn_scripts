echo off
cls
echo ***            DOLPHIN BOATING SIMULATOR                 ***
echo ***          INSTALL3  INSTALLATION  ROUTINE             ***
echo ***    Copyright Dolphin Marine Systems, Inc.  1988      ***  
echo For dual Diskette system, with at least 512kb, with VDISK 
echo or RAMDISK of at least 300kb set up in your DOS (CONFIG.SYS)
echo USE BACKUP DISKS ONLY! This routine writes on the MASTER !
ECHO If not correct, or not BACKUP, hit [cntl][break] and start again.
echo Please put DOS Disk in Drive A: and BACKUP MASTER Disk in B:
PAUSE
b:
copy B:BOATING3 B:BOATING.BAT
copy B:BOATINH3 B:BOATINH.BAT
copy A:assign.com B:
if exist B:ASSIGN.COM goto AOK1
echo INSTALLATION UNSUCCESSFUL ! Cannot find ASSIGN.COM from DOS.
echo Please check instructions, correct problem and restart !
PAUSE
goto ENDB
:AOK1
instalf1
:ENDB
a:
