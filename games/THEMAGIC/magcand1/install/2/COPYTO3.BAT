echo off
cls
echo COPYTO3 copies your 5 1/4" Magic Candle disks.
echo It is designed to be used to make 3 1/2" disks for
echo later hard-disk installation.
echo  
echo (If you will be playing "The Magic Candle" from
echo 3 1/2" disks, use INSTALL instead of COPYTO3.)
echo  
pause
if "%1" == "" goto NoParms
if "%2" == "" goto NoParms
echo on
cls
%2:
md \TILES
cd \
copy %1:\*.*
cd \TILES
copy %1:\TILES\*.*
%1:
goto X
:NoParms
echo  
echo To run COPYTO3, type:
echo  
echo     COPYTO3 A B
echo  
echo to copy from drive A to drive B, or
echo  
echo     COPYTO3 B A
echo  
echo to copy from drive B to drive A.
:X

