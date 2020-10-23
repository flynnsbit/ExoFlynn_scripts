@echo off
echo This program will make a boot disk. By inserting this disk before you
echo switch on or reset your computer, MSDOS will start up without loading
echo in your device drivers and TSRs, so you should have more memory
echo available.
echo.
echo First, insert a disk in drive A: This disk will be formatted.
format a: /v:BootDisk /s
if errorlevel 1 goto error
copy config.sys a:
pickdrv >>a:config.sys c:\config.sys
pickdrv >a:cd.bat c:\autoexec.bat
copy a:cd.bat+autoexec.bat a:autoexec.bat
goto end
:error
echo The boot disk was not made.
:end
