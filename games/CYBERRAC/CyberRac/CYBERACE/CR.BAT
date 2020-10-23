@ECHO OFF
copy gamestar.jmo gamedata.dta
@echo off
check
if errorlevel 1 goto end
:loop
t15
if errorlevel 1 goto end
voxel4
if errorlevel 1 goto end
goto loop
:end
