@echo off
cls
echo.
echo.
echo.
echo.
echo Please insert a formatted system disk in drive A and...
pause
@echo on
copy config.004 a:config.sys
copy autoexec.002 a:autoexec.bat
@echo off
echo.
echo.
echo Now boot the floppy in drive A to see how much free memory you have.
echo.
echo.


