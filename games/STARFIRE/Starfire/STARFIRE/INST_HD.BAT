@echo off
cls
echo STARFIRE Hard Disk Installation Program
echo ---------------------------------------
echo STARFIRE will be copied to a directory on your Hard Disk
echo called C:\STARFIRE. Press CTRL-C to abort or
pause
md c:\STARFIRE
echo Copying files.. one moment please
xcopy *.*  c:\STARFIRE
c:
cd \starfire
cls
echo Type 'starfire' to play... Enjoy..

