echo off
md %1:\%2
copy *.* %1:\%2 
%1:
cd %1:\%2
echo on
