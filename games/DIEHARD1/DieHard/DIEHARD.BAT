echo off
:rerun
die r %1 %2 %3
if errorlevel == 6 goto rerun
echo Exiting Die Hard
