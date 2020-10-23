echo off
CLS
echo ***            DOLPHIN BOATING SIMULATOR                 ***
echo ***          INSTALL4  INSTALLATION  ROUTINE             ***
echo ***     Copyright Dolphin Marine Systems, Inc.  1988     ***
echo For HARD DISK systems with at least 512KB, and a VDISK, or 
echo RAMDISK of at least 300KB set up in your DOS (CONFIG.SYS).
echo We will create a Directory called DOLPHIN on your Hard Disk,
echo and copy the MASTER Disk and ASSIGN.COM from your DOS into it.
echo If this is not correct, hit [cntl][break] and start over.
pause
c:
cd\
mkdir DOLPHIN
cd\DOLPHIN
copy a:*.*
copy BOATING4 BOATING.BAT
copy BOATINH4 BOATINH.BAT
instalf2
