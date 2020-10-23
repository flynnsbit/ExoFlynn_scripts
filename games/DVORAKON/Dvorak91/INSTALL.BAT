@ECHO OFF
echo ------------------------
cls
echo Dvorak On Typing
echo Version 1.0
echo Copyright 1991, Park Place Production Team
echo All Rights Reserved
echo .
if "%1" == "a" goto wrongdrive
if "%1" == "A" goto wrongdrive
if "%1" == "a:" goto wrongdrive
if "%1" == "A:" goto wrongdrive
if "%1" == "b" goto wrongdrive
if "%1" == "B" goto wrongdrive
if "%1" == "b:" goto wrongdrive
if "%1" == "B:" goto wrongdrive
if "%1" == "c" goto doinstc
if "%1" == "C" goto doinstc
if "%1" == "c:" goto doinst
if "%1" == "C:" goto doinst
if "%1" == "d" goto doinstc
if "%1" == "D" goto doinstc
if "%1" == "d:" goto doinst
if "%1" == "D:" goto doinst

:instruct
echo To Install Dvorak On Typing on your hard disk: INSTALL C:
echo .
goto end

:wrongdrive
echo You cannot install Dvorak On Typing to Drive %1.
goto instruct

:doinst
md %1\Dvorak
goto qqq
:no1
echo Please Insert Startup Disk & Data Disk A, B
echo               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
pause
:qqq
if not exist dot.exe goto no1
copy *.* %1\Dvorak

:no2
echo Please Insert Data Disk C, D
echo               ^^^^^^^^^^^^^^
pause
if not exist FIVE____.DSK goto no2
copy *.* %1\Dvorak

:no3
echo Please Reinsert Startup Disk & Data Disk A, B
echo                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
pause
if not exist dot.exe goto no3
copy dothelp.tth %1\Dvorak
cd %1\dvorak
echo Installation Successful.
echo Type "DOT <Enter>" to run Dvorak on Typing.
%1

goto end

:doinstc
md %1:\Dvorak
goto qqq4
:no14
echo Please Insert Startup Disk & Data Disk A, B
echo               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
pause
if not exist dot.exe goto no14
:qqq4
copy *.* %1:\Dvorak

:no24
echo Please Insert Data Disk C, D
echo               ^^^^^^^^^^^^^^
pause
if not exist FIVE____.DSK goto no24
copy *.* %1:\Dvorak

:no34
echo Please Reinsert Startup Disk & Data Disk A, B
echo                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
pause
if not exist dot.exe goto no34
copy dothelp.tth %1:\Dvorak

cd %1:\dvorak
echo Installation Successful.
echo Type "DOT <Enter>" to run Dvorak on Typing.
%1:
:end
