@echo off
cls
echo.
echo.
echo.
echo.
echo Please insert a disk formatted system disk in drive A and...
pause
@echo on
copy config.003 a:config.sys
copy autoexec.000 a:autoexec.bat
@echo off
echo.
echo.
echo Now boot the floppy in drive A to see how much free memory you have.
echo.
echo.

