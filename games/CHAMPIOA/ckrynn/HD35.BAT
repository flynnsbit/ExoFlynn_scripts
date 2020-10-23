echo off
cls
echo  This routine will copy CHAMPIONS OF KRYNN from
echo  master disks to the hard drive.
echo  ù
echo  You specified drive: %1
echo  ù
echo  If this is correct press space bar.
echo  ù
echo  If not press CONTROL-C at this time and answer yes
echo  to terminate.
pause
cls
echo Making %1:\KRYNN
md %1:\KRYNN
echo Insert MASTER DISK 1/2
pause
copy *.* %1:\KRYNN
echo Insert MASTER DISK 3/4
pause
copy *.* %1:\KRYNN
echo Copy complete.
echo .
echo To install the pregenerated party into %1:\KRYNN\SAVE
echo type COPYSAVE %1
echo .
echo Type START from the %1:\KRYNN subdirectory to play.
echo .
echo on