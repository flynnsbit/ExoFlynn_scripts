echo off
cls
echo               ������������������������������������������������ͻ
echo               ��������������������������������������������������Ŀ
echo               ���                                            ��� �
echo               ���          CAMPAIGN "MISSIONS DISK"          ��� �
echo               ���                                            ��� �
echo               ���             Hard Disk Install              ��� �
echo               ���                                            ��� �
echo               ���     Copyright (c) 1993 Empire Software     ��� �
echo               ���                                            ��� �
echo               �������������������������������������������������� �
echo               ������������������������������������������������ͼ �
echo �               ��������������������������������������������������
echo �
if not %1~==~ goto gotdrive
echo �
echo The CAMPAIGN "MISSIONS DISK" must be installed to your CAMPAIGN directory:-
echo �
echo Type INSTALL followed by the name of your Campaign directory.
echo �
echo For Example,
echo �
echo    INSTALL C:\CAMPAIGN
echo    INSTALL D:\CAMPAIGN
echo    INSTALL E:\CAMPAIGN
echo �
goto dos

:gotdrive
if %0==b:install goto bdrive
if %0==B:INSTALL goto bdrive
if %0==a:install goto adrive
if not %0==A:INSTALL goto begin

:adrive
A:
goto begin
:bdrive
B:

:begin
echo                         Installing "MISSIONS DISK" to:
echo �
echo                                  %1\
echo �
echo                 press any key to continue or "CTRL C" to abort
pause > NUL
echo �

:install1
if exist MISSIONS.EXE goto gotdisk1
echo            Please insert "CAMPAIGN MISSIONS DISK" and press any key
pause > NUL
goto install1

:gotdisk1
echo               Copying MISSIONS DISK to %1\...please wait
MISSIONS.EXE %1\ > NUL
if not errorlevel 27 goto error

goto done
:error
cls
echo �
echo �
echo                           !! Installation Has Failed !!
echo �
echo            "MISSIONS DISK" has not been installed on your hard disk.
echo �
echo            This program requires at least 3.5 Mb of free disk space.
echo �
echo �
echo �
goto dos

:done
cls
echo �
echo �
echo �                   ���������������������������������������
echo �                   ������                           ������
echo �                   ������   Installation Complete   ������
echo �                   ������                           ������
echo �                   ���������������������������������������
echo �
echo �
echo       "CAMPAIGN MISSIONS DISK" has now been installed on your hard disk.
echo �
echo �
echo �
echo �
:dos

