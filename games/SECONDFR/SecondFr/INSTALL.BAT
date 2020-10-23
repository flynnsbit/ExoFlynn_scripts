echo off
cls
echo    ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo    บ                                                             บ
echo    บ       This routine will copy SECOND FRONT from              บ
echo    บ       master disks to the hard drive.                       บ
echo    บ                                                             บ
echo    บ       You specified hard drive: %1                           บ
echo    บ                                                             บ
echo    บ       If this is correct press space bar.                   บ
echo    บ                                                             บ
echo    บ       If not press CONTROL-C at this time and answer yes    บ
echo    บ       to terminate.                                         บ
echo    บ                                                             บ
echo    ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
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
