echo off
cls
echo    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
echo    �                                                             �
echo    �       This routine will copy SECOND FRONT from              �
echo    �       master disks to the hard drive.                       �
echo    �                                                             �
echo    �       You specified hard drive: %1                           �
echo    �                                                             �
echo    �       If this is correct press space bar.                   �
echo    �                                                             �
echo    �       If not press CONTROL-C at this time and answer yes    �
echo    �       to terminate.                                         �
echo    �                                                             �
echo    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
pause
cls
echo Making %1:\SF
md %1:\SF
echo .
echo Making %1:\SF\SAVE
md %1:\SF\SAVE
echo .
echo Copying GAME DISK
copy *.* %1:\SF
echo .
echo Please Insert DISK 2
pause
echo .
echo Copying DISK 2
copy *.* %1:\SF
%1:
cd \SF
echo .
echo Installation Complete
echo .
echo Type START to begin play.
