echo off >nul
:again
if %2a == installed1a goto ok2:
goto error2:
:ok2
pause > nul
if not exist WIN1.EXE goto error3:
echo .
echo Loading Disk #2...
copy *.* %1 >nul
echo .
echo You have successfully installed TAKE DOWN on drive %1
echo .
echo Type "TD" to play!
%1
cd \
echo .
goto end1:
:error2
echo .
echo Use the INSTALL routine on Disk #1 to install TAKE DOWN
echo on your hard disk.
echo .
goto end1:
:error3
echo .
echo Please replace Disk #1 with Disk #2 and
echo press any key...
goto again
:end1
