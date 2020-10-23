@echo off
C:
cd\simuldir
if exist inst.exe .\inst
if errorlevel 2 goto end
doit
:end
if exist c:\sim_tmp.bat c:\sim_tmp
