echo off
if .%1 == . goto no_disk
if not exist %1:disk.1 goto bad_disk
if exist disk.1 goto bad_current
echo Installing NIGHT HUNTER in your current directory from drive %1:.
echo ÿ
echo The NIGHT HUNTER executable file will be placed in the current directory
echo of the default disk drive, which is:
cd
echo It is assumed that you have enough disk space to contain all disks of
echo NIGHT HUNTER.
echo ---------------------------------------------------------------------
echo If this information is not acceptable, press Ctrl-Break.  Otherwise
pause
echo NIGHT HUNTER installation in progress...
mkdir cga
:wait_disk_1
if exist %1:\disk.1 goto disk_1_in
echo Insert disk 1 and press any key
pause
goto wait_disk_1
:disk_1_in
copy %1:\current.bat >nul:
goto next_bat
:no_disk
echo You need to specify a disk drive letter of the original.
echo If you typed A:INSTALL to run this batch file, you should type A:INSTALL A.
goto done
:bad_disk
echo The disk drive specified (%1) is incorrect. If the NIGHT HUNTER diskette is
echo in the A: drive, you should type A:INSTALL A.
goto done
:bad_current
echo You're trying to copy NIGHT HUNTER onto itself!
echo The current drive should be the disk with enough free space to hold all disks
echo of NIGHT HUNTER.  If you are going to use NIGHT HUNTER on the distribution
echo disks (not recommended), it does not have to be installed.
goto done
:next_bat
current.bat %1
:done
