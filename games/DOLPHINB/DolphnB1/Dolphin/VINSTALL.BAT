echo off
CLS
echo ***           DOLPHIN BOATING SIMULATOR                  ***
echo ***         VOYAGE DISK INSTALLATION  ROUTINE            ***
echo ***     Copyright Dolphin Marine Systems, Inc.  1988     ***
echo ***   For systems with a HARD DISK and at least 256kb.   ***
echo This routine loads into the DOLPHIN directory on the hard disk.
echo If this is not right, please hit [cntl][break] and start over.
echo Please insert VOYAGE DISK in Drive A:
pause
c:
cd\DOLPHIN
copy a:*.*
:AOK1
echo IF there were no BAD COMMAND messages above, then...VOYAGE
echo DISK INSTALLATION COMPLETE ! Please install any others TOO!
echo Type cd\DOLPHIN, then type BOATING to run the SYSTEM.
:ENDB
cd\
