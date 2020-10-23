@echo off
memchk 7000000
if errorlevel==1 goto jump1
echo Starting F1
set dos4gvm=@f1.vmc
f.exe /s
set dos4gvm=
goto end:
:jump1
f.exe
:end
