@echo off
cls
echo.
echo.
echo.
echo.
echo Please insert a disk formatted system disk in drive A and...
pause
@echo on
copy config.001 a:config.sys
copy autoexec.001 a:autoexec.bat
@echo off
echo.
echo.
echo Now copy your MOUSE.COM file onto the floppy disk in drive A and
echo boot drive A to see how much memory you have.
echo.
echo.

