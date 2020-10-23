@echo off
cls
echo.
echo Please insert a formatted system disk in drive A and...
pause
@echo on
copy autoexec.t2k a:\autoexec.bat
copy config.qem a:\config.sys
@echo off
echo.
echo Now boot with the floppy in drive A.
echo.
