echo off
CLS
echo ***              DOLPHIN BOATING SIMULATOR                 ***
echo ***           INSTALL2  INSTALLATION  ROUTINE              ***
ECHO ***      Copyright Dolphin Marine Systems, Inc.  1988      ***
echo For systems with HARD DISK, at least 256kb, and COLOR Adapter.
echo This routine creates a DOLPHIN directory on the hard disk, and
echo copies ASSIGN.COM from your DOS System to execute properly.
echo If this is not right, please hit [cntl][break] and start over.
pause
c:
cd\
:AOK
md DOLPHIN
cd\DOLPHIN
xcopy a:*.*
xcopy BOATING2 BOATING.BAT
xcopy BOATINH2 BOATINH.BAT
instalf2
