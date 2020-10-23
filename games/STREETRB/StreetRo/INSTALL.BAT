echo off
if .%2 == .~ goto TrueCopy
cls
if %1a == a goto Error
if %1 == c: goto begin
if %1 == C: goto begin
if %1 == d: goto begin
if %1 == D: goto begin
if %1 == e: goto begin
if %1 == E: goto begin
if %1 == f: goto begin
if %1 == F: goto begin
goto Error
:begin
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                    Street Rod Hard Disk Installation                  บ
echo บ    This will create a directory called %1\SR2 on your hard disk.      บ
echo บ       If you don't want to install Street Rod now, press Ctrl-C.      บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
pause
echo 
if not exist sr.exe goto Error
if exist %1\SR2\sr.exe goto SR2Exists
md %1\SR2
:1
echo 
echo Please insert Disk #1
pause
copy install.bat %1\SR2
if not exist %1\SR2\install.bat goto Error
%1\SR2\install %1 ~
:TrueCopy
echo 
copy *.* %1\SR2
If not exist %1\SR2\lib1c goto Error
echo 
:Disk2Now
cls
echo Please insert Disk #2
pause
if not exist lib2 goto Disk2Now
copy *.* %1\SR2
If not exist %1\SR2\sr2_data goto Error
:Disk3Now
cls
echo Please insert Disk #3
pause
if not exist lib2c goto Disk3Now
copy *.* %1\SR2
If not exist %1\SR2\lib2c goto Error
:Disk4Now
cls
echo Please inser Disk #4
pause
if not exist lib3 goto Disk4Now
copy *.* %1\SR2
if not exist %1\SR2\sr2_shp goto Error
cd %1\SR2
cls
echo Street Rod installation completed.  Type SR to run.
%1
goto done
:SR2Exists
echo 
echo Installation Error: Street Rod already exists on this drive.
echo Delete this directory and all files in it, then try installing again.
echo 
:Error
echo 
echo Street Rod was not installed correctly.
:done
