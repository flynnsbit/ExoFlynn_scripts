echo off
cls
echo  This program will install the
echo  MINDSCAPE floppy disk in drive A
echo  on hard disk directory \%1.
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
copy c:\%1\bthd.cfg c:\%1\bt.cfg
