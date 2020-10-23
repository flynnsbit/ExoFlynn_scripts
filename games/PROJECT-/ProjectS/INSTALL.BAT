echo off
if %1 == c: goto hard
if exist a:command.com goto hard

CLS
echo INSTALL COMMAND FILE
echo COPYRIGHT 1987 ACCOLADE INC.
pause
CLS
echo off
echo
echo  PLACE YOUR DOS DISK IN DRIVE B:
echo  
echo  IF YOU HAVE A ONE DRIVE SYSTEM PUT YOUR DOS DISK IN A: WHEN THE B: DISK
echo  IS ASKED FOR.
echo  WHEN YOU ARE ASKED FOR THE DISK FOR DRIVE A:,PLACE YOUR
echo  START/INSTALL DISK INTO DRIVE A:
pause
echo COPYING COMMAND.COM ON TO YOUR START\INSTALL DISK.
echo 
COPY b:COMMAND.COM a:command.com
CLS

:hard
setcolor /n /red /Accolade
