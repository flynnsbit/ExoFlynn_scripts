@echo off
rem try and ensure we are in the correct directory...
if exist dlexec.exe goto correct
cd \dlight
:correct
set DOS4G=quiet
dlexec
echo on
