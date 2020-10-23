echo off
cls
echo CREATE UPDATE DISKETTE FOR DOS 2.10
echo Insert a 2.10 diskette in drive B: for the update copy. If this
echo is a single drive system place in drive B: press enter when
echo the "Insert diskette in drive B:" prompt appears
pause
PATCH DOS21 B:\
ECHO UPDATE COMPLETE
