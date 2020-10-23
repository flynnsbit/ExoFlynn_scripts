echo off
cls
echo  This program will install the
echo  MINDSCAPE floppy disk in drive A
echo  onto hard disk directory \%1.
echo  If you do not wish to do this,
echo  press Ctrl-Break.
pause
echo on
c:
cd\
a:install
md\%1
cd\%1
copy a:*.* c:\%1
erase c:\%1\harrier.bat
rename c:\%1\harrier.hrd harrier.bat
echo off
cls
echo  Please insert Harrier Disk 2
echo  into drive A.
pause
echo on
copy a:*.* c:\%1



