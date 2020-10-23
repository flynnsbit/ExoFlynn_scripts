@echo off
echo Creating 3DWB directory where files will be copied.
pause
md c:\3dwb
copy a:\*.* c:\3dwb
echo Insert 3D World Boxing Disk #2
pause
copy a:\*.* c:\3dwb
c:
cd c:\3dwb
echo *********************************************
echo run 3dwb.bat  or  3dwbmidi.bat for midi sound
echo *********************************************