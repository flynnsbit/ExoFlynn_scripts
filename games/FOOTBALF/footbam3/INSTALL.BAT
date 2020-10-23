echo off
md %1\fm3
copy *.* %1\fm3
%1
cd %1\fm3
echo on
