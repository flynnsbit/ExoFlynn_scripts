Echo Off
Cls
Echo Make sure you have a floppy in drive A: that you want formatted!
pause
Format a:/s/u
Cls


echo STACKS=9,256 > a:\config.sys
echo FILES=30 >> a:\config.sys
echo Buffers=30 >> a:\config.sys

echo PROMPT $P$G $ > a:\autoexec.bat
echo path a:\; >> a:\autoexec.bat

Cls
echo.
echo.
echo.
echo Please REBOOT your computer with this disk in your A: drive...
echo.
