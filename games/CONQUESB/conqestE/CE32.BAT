@echo off
cemarker in
recreate
if ERRORLEVEL 1 goto ceend
upinst
cd intro
call xxx.bat
rem del xxx.bat
cd..
:ceend
cemarker out
