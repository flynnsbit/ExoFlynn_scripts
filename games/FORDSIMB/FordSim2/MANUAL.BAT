echo off
cls
echo You are about to copy the documentation to your printer
pause
echo Printing......
copy *.DOC prn
copy *.txt prn
copy read*.* prn
copy manual*.* prn
copy *.new prn
echo All done. Ignore any "File Not Found" error statements that
echo might have appeared on your screen. These are normal and should
echo not cause you any concern. Be sure to read all instructions that
echo you have just printed out before attempting to run the program.
echo on
