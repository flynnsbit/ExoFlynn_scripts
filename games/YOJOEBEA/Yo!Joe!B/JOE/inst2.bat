rem ****************************************************************++
@echo off
if %2x == x goto error0
:Disk1
IF EXIST %3\disk1 GOTO disk1_okay
cls
echo.
echo                               Please insert disk
echo                            �����������������������Ŀ
echo                            �������������Ŀ         �
echo                            �� YO! JOE! 1 �        ��
echo                            ���������������        ��
echo                            � Cracked by:           �
echo                            � The Dream Team        �
echo                            �                       �
echo                            �                       �
echo                            �                       �
echo                            �                       �
echo                            �������������������������
echo                                  into drive %3
echo.
echo                            (press any key to continue)
pause >nul
IF NOT EXIST %3\disk1 GOTO disk1
:disk1_okay
cls
echo �����Ŀ
echo �  1  �  Please wait ... Install running
echo �������
echo.
echo.
unpack %1\file1.joe                  >nul

rem ****************************************************************++
:Disk2
cls
echo.
echo                               Please insert disk
echo                            �����������������������Ŀ
echo                            �������������Ŀ         �
echo                            �� YO! JOE! 2 �        ��
echo                            ���������������        ��
echo                            � Cracked by:           �
echo                            � The Dream Team        �
echo                            �                       �
echo                            �                       �
echo                            �                       �
echo                            �                       �
echo                            �������������������������
echo                                  into drive %3
echo.
echo                            (press any key to continue)
pause >nul
IF NOT EXIST %3\disk2 GOTO disk2
cls
echo �����Ŀ
echo �  2  �  Please wait ... Install running
echo �������
echo.
echo.
unpack %1\file2.joe                  >nul
cd sound
..\unpack %1\sound.joe                  >nul
cd ..


cls
echo ���������������������������������������������������������������������������ͻ
echo � Install of YO! JOE! is completed. Please read the following instructions  �
echo � and select your personal hardware-configuration in the setup. Thanx TDT!  �
echo ���������������������������������������������������������������������������Ķ
echo �                            ATTENTION !                                    �
echo � Original Joe-disk 1 must be in diskdrive to run YO! JOE! from harddisk  ! �
echo ���������������������������������������������������������������������������Ķ
echo �                      Please press a key to continue !                     �
echo ���������������������������������������������������������������������������ͼ
pause > nul
cd %tp%
cls
echo ���������������������������������������������������������������������������ͻ
echo �    Please select your language :                                          �
echo �                                                                           �
echo ���������������������������������������������������������������������������Ķ
echo � 1  ENGLISH  / ENGLISCH      / ANGLAISE   ............................ 1   �
echo ���������������������������������������������������������������������������Ķ
echo � 2  GERMAN   / DEUTSCH       / ALLEMANGE  ............................ 2   �
echo ���������������������������������������������������������������������������Ķ
echo � 3  FRENCH   / FRANZOESISCH  / FRANCAISE  ............................ 3   �
echo ���������������������������������������������������������������������������ͼ
getkey

IF ERRORLEVEL 3 GOTO french
IF ERRORLEVEL 2 GOTO german

:english
copy *.eng *.dat >nul
goto info

:german
copy *.ger *.dat >nul
goto info

:french
copy *.fre *.dat >nul
goto info

:info
info  /1


detect /nomsg
IF ERRORLEVEL 7 GOTO CPU386
IF ERRORLEVEL 6 GOTO CPU286

copy joe.86 joe.cfg >nul
GOTO Setup

:CPU286
copy joe.286 joe.cfg >nul
GOTO Setup

:CPU386
copy joe.386 joe.cfg >nul
GOTO Setup

:Setup
setup %1 %2
makeboot %2
testdma
joe
set tp=
set sp=
goto ende

:error0
echo Sorry ! This BATCH will NOT run stanalone !
:ende

