@echo off
minst.exe
if errorlevel == -1 goto error
cls
sn2_12.exe
del sn2_12.exe
setup.exe
goto end
:error
echo Error installing Shaw's Nightmare!
:end
