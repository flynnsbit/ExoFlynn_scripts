echo off
md %1
echo Copying Game files to %1
copy a:\*.* %1
echo Place Stat Compiler and Stadium Disk in Floppy Drive
pause
copy a:\*.* %1\*.*
