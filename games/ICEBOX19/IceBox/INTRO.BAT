@echo off
ib.com %1 %2  /Normal_PC /Sound_Blaster /Right_Mouse
if errorlevel 1 goto error_exit
if errorlevel 0 goto ok_exit
:error_exit
pause
:ok_exit
cd ..
