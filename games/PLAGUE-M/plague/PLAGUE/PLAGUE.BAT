echo off
set DOS4G=quiet
set DOS4GVM=@surg.vmc
cls
ckmouse.exe
if errorlevel 1 goto end
intro.exe
surg.exe
cls
:end
cd \
echo on

