rem ****************************************************************++
@echo off
if %2x == x goto error0
:Disk1
IF EXIST %3\disk1 GOTO disk1_okay
cls
echo.
echo                               Please insert disk
echo                            旼컴컴컴컴컴컴컴컴컴컴컴�
echo                            넬컴컴컴컴컴컴�         �
echo                            납 YO! JOE! 1 �        粕
echo                            냅컴컴컴컴컴컴�        읏
echo                            � Cracked by:           �
echo                            � The Dream Team        �
echo                            �                       �
echo                            �                       �
echo                            �                       �
echo                            �                       �
echo                            읕컴컴컴컴컴컴컴컴컴컴컴�
echo                                  into drive %3
echo.
echo                            (press any key to continue)
pause >nul
IF NOT EXIST %3\disk1 GOTO disk1
:disk1_okay
cls
echo 旼컴컴�
echo �  1  �  Please wait ... Install running
echo 읕컴컴�
echo.
echo.
unpack %1\file1.joe                  >nul

rem ****************************************************************++
:Disk2
cls
echo.
echo                               Please insert disk
echo                            旼컴컴컴컴컴컴컴컴컴컴컴�
echo                            넬컴컴컴컴컴컴�         �
echo                            납 YO! JOE! 2 �        粕
echo                            냅컴컴컴컴컴컴�        읏
echo                            � Cracked by:           �
echo                            � The Dream Team        �
echo                            �                       �
echo                            �                       �
echo                            �                       �
echo                            �                       �
echo                            읕컴컴컴컴컴컴컴컴컴컴컴�
echo                                  into drive %3
echo.
echo                            (press any key to continue)
pause >nul
IF NOT EXIST %3\disk2 GOTO disk2
cls
echo 旼컴컴�
echo �  2  �  Please wait ... Install running
echo 읕컴컴�
echo.
echo.
unpack %1\file2.joe                  >nul
cd sound
..\unpack %1\sound.joe                  >nul
cd ..


cls
echo �袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴敲
echo � Install of YO! JOE! is completed. Please read the following instructions  �
echo � and select your personal hardware-configuration in the setup. Thanx TDT!  �
echo 픔컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
echo �                            ATTENTION !                                    �
echo � Original Joe-disk 1 must be in diskdrive to run YO! JOE! from harddisk  ! �
echo 픔컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
echo �                      Please press a key to continue !                     �
echo 훤袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴�
pause > nul
cd %tp%
cls
echo �袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴敲
echo �    Please select your language :                                          �
echo �                                                                           �
echo 픔컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
echo � 1  ENGLISH  / ENGLISCH      / ANGLAISE   ............................ 1   �
echo 픔컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
echo � 2  GERMAN   / DEUTSCH       / ALLEMANGE  ............................ 2   �
echo 픔컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
echo � 3  FRENCH   / FRANZOESISCH  / FRANCAISE  ............................ 3   �
echo 훤袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴袴�
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

