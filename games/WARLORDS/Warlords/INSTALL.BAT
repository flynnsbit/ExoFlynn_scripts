echo off
if "%1" == "" goto usage

rem am I on master A?
if exist disk.1 goto proceed
if exist disk.2 goto wrongdisk
if exist disk.3 goto wrongdisk
if not exist disk.1 goto usage

:proceed
if not exist install.bat goto usage

rem must install onto a hard disk i.e. c: -> z:
if %1==a: goto usage
if %1==A: goto usage
if %1==b: goto usage
if %1==B: goto usage

echo 
Hard Disk installation
echo This will create a directory called \WARLORDS on your hard disk
echo in your %1 directory and copy the game files into it.

pause

mkdir %1\warlords

echo 

Copying Disk 1 files now .....
copy *.* %1\warlords	>nul:

if exist disk.3 goto skip2
:loop2
echo 

Please insert Disk 2 into current drive.
pause
if not exist disk.3 goto loop2
:skip2

echo 

Copying Disk 2 files now .....
copy *.* %1\warlords	>nul:

echo 

Warlords is now installed, the game can be played by typing:
echo	%1
echo	cd \warlords
echo	warlords
goto exit

:wrongdisk
echo Hard Disk install program for Warlords

echo อออออออออออออออออออออออออออออออออออออออ
echo 
Place Disk 1 in drive before attempting install.
echo 


goto exit

:usage
echo Hard Disk install program for Warlords

echo อออออออออออออออออออออออออออออออออออออออ
echo 
Place Disk 1 in drive a: or drive b: and go to that drive and type 
echo "INSTALL DRIVE:" where DRIVE: is your hard disk.
echo 

For example, if you want to copy the game from your a: drive to 
echo the c: drive on your hard disk you would type
echo		A:        [enter]
echo		INSTALL C:[enter]
echo If your hard disk has a drive letter other than C: use its
echo letter instead.


:exit
