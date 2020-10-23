echo off
cls
del buffer
echo How many disk drives do you have?  Enter
echo	1  for 1 disk drive
echo	2  for 2 or more disk drives
echo	3  if you have a hard disk
echo (Press 1, 2, or 3)
input
if errorlevel 51 goto 3
if errorlevel 50 goto 2
echo With only one disk drive, you will need to swap disks several times.
echo The computer will tell you when to do so.
echo Remember that this game diskette is the "diskette for drive A"
echo Your DOS diskette is the "diskette for drive B"
:2
b:
goto end
:3
echo Is your hard disk drive C, D, or E? (Most are drive C--press C, D, or E)
input
if errorlevel 101 goto E
if errorlevel 100 goto D
c:
goto end
:D
d:
goto end
:E
e:
goto end
:end
sys a:
copy command.com a:
a:
echo Your disk is now ready to boot.
