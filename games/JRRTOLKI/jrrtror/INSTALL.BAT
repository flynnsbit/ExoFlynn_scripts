echo off
cls
echo  This will copy RIDERS OF ROHAN to the hard drive.
echo  �
echo  You specified drive %1
echo  �
echo  If this is correct press space bar.
echo  �
echo  If not press CONTROL-C at this time and answer yes
echo  to terminate.
pause
cls
md %1\rohan
copy riders.bat %1\rohan
%1\rohan\riders.bat %1

