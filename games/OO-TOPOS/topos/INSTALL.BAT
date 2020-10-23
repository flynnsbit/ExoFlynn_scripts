echo off
cls
echo COMPREHEND disk setup #1: 1 drive
echo .
echo Start with your COMPREHEND disk in
echo the drive. When prompted for drive
echo B, put your DOS disk in the drive.
echo When prompted for drive A, put your
echo COMPREHEND disk in the drive.
echo .
echo COMPREHEND disk setup #2: 2 drives
echo .
echo Put a DOS disk in drive B, with the
echo COMPREHEND disk in drive A.
echo .
pause
copy b:command.com a:
b:
sys a:
a:
