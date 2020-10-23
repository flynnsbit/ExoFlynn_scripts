@echo off
cemarker in
recreate
if ERRORLEVEL 1 goto ceend
upinst
cd intro
call xxx.bat /m16
del xxx.bat
cd..
:ceend
cemarker out
