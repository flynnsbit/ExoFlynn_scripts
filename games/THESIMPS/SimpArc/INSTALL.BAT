echo off
if x%1 == x goto err
if x%2 == x goto err
if %1 == %2 goto err
%2
cd \
mkdir \simpson
cd simpson
mkdir data
mkdir prg
:a
echo Insert disk 1 in drive A:
pause
if not exist %1data\d1 goto a1
copy %1*.*
copy %1\data\*.* data
copy %1\prg\*.* prg
:b
echo Insert disk 2 in drive A:
pause
if not exist %1data\d2 goto b1
copy %1\data\*.* data
goto end
:a1
goto a
:b1
goto b
:err
echo Invalid drives
:end
cd \
echo on
