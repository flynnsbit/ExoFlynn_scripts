echo off
cls
echo  * * * * * * * * * * * * * * * * * *
echo  *    INSTALLING YOUR PROGRAM ON   *
echo  *         A ONE DISK SYSTEM       *
echo  *                                 *
echo  *      MINDSCAPE INCORPORATED     *
echo  * * * * * * * * * * * * * * * * * *
echo   
echo  Insert the MINDSCAPE diskette when
echo  your computer asks for drive A and
echo  insert the DOS diskette when the
echo  system asks for drive B.
echo    
pause
b:
sys a:
echo     
copy command.com a:
echo   
echo  You should have seen the messages
echo  "System transferred" and
echo  "1 File(s) copied" appear on your
echo  screen.  If not, try again.
echo   
a:
echo  Your MINDSCAPE diskette is now
echo  ready to use.  HAVE FUN!!
