echo off
cls
echo  * * * * * * * * * * * * * * * * * *
echo  *    INSTALLING YOUR PROGRAM ON   *
echo  *         A TWO DISK SYSTEM       *
echo  *                                 *
echo  *      MINDSCAPE INCORPORATED     *
echo  * * * * * * * * * * * * * * * * * *
echo   
echo  Insert your DOS diskette into
echo  drive B.
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
