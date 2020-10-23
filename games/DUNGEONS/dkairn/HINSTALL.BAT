echo off
cls
%1
md %1\kairn
cd %1\kairn
echo off
cls
echo Verify that the "Play" disk is in drive A: and
echo off
pause
echo off
copy a:*.* %1\kairn
echo Insert the "Data" disk into drive A: and
echo off
pause
echo off
copy a:*.* %1\kairn
copy %1\kairn\kairn.bat %1\*.*
erase %1\kairn\*.bat
Setup
echo Installation is complete;
echo
pause


