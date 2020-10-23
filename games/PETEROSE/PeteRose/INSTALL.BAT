echo off
if .%1 == . goto usage
if .%1 == .flag goto begin
if not exist %1\*.* md %1 >nul
copy install.bat %1 >nul
if exist %1install.bat %1install flag %1
if exist %1\install.bat %1\install flag %1
echo Invalid drive:path specified.
goto end


:begin
shift

:disk1
cls
echo 



Insert Disk #1 and press any key to continue . . .
pause >nul
if not exist gamedisk goto disk1
cls
echo 



Copying from Disk #1 to %1
copy *.* %1 >nul

:disk2
cls
echo Insert Disk #2 and press any key to continue . . .
pause >nul
if not exist shapdisk goto disk2
cls
echo 



Copying from Disk #2 to %1
copy *.* %1 >nul

cls
echo 



"Pete Rose Pennant Fever" is now installed to %1

goto end

:usage
echo To install "Pete Rose Pennant Fever"
echo type: INSTALL {drive id : path}
echo 
Example: INSTALL C:\PETEROSE
:end
