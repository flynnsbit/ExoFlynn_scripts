rem ****************************************************************++
@echo off
if %2x == x goto error0
:Disk1
IF EXIST %3\disk1 GOTO disk1_okay
cls
echo.
echo                               Please insert disk
echo                            ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo                            ³ÚÄÄÄÄÄÄÄÄÄÄÄÄ¿         ³
echo                            ³³ YO! JOE! 1 ³        ÚÙ
echo                            ³ÀÄÄÄÄÄÄÄÄÄÄÄÄÙ        À¿
echo                            ³ Cracked by:           ³
echo                            ³ The Dream Team        ³
echo                            ³                       ³
echo                            ³                       ³
echo                            ³                       ³
echo                            ³                       ³
echo                            ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
echo                                  into drive %3
echo.
echo                            (press any key to continue)
pause >nul
IF NOT EXIST %3\disk1 GOTO disk1
:disk1_okay
cls
echo ÚÄÄÄÄÄ¿
echo ³  1  ³  Please wait ... Install running
echo ÀÄÄÄÄÄÙ
echo.
echo.
unpack %1\file1.joe                  >nul

rem ****************************************************************++
:Disk2
cls
echo.
echo                               Please insert disk
echo                            ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo                            ³ÚÄÄÄÄÄÄÄÄÄÄÄÄ¿         ³
echo                            ³³ YO! JOE! 2 ³        ÚÙ
echo                            ³ÀÄÄÄÄÄÄÄÄÄÄÄÄÙ        À¿
echo                            ³ Cracked by:           ³
echo                            ³ The Dream Team        ³
echo                            ³                       ³
echo                            ³                       ³
echo                            ³                       ³
echo                            ³                       ³
echo                            ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
echo                                  into drive %3
echo.
echo                            (press any key to continue)
pause >nul
IF NOT EXIST %3\disk2 GOTO disk2
cls
echo ÚÄÄÄÄÄ¿
echo ³  2  ³  Please wait ... Install running
echo ÀÄÄÄÄÄÙ
echo.
echo.
unpack %1\file2.joe                  >nul
cd sound
..\unpack %1\sound.joe                  >nul
cd ..


cls
echo ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo º Install of YO! JOE! is completed. Please read the following instructions  º
echo º and select your personal hardware-configuration in the setup. Thanx TDT!  º
echo ÇÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¶
echo º                            ATTENTION !                                    º
echo º Original Joe-disk 1 must be in diskdrive to run YO! JOE! from harddisk  ! º
echo ÇÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¶
echo º                      Please press a key to continue !                     º
echo ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
pause > nul
cd %tp%
cls
echo ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo º    Please select your language :                                          º
echo º                                                                           º
echo ÇÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¶
echo º 1  ENGLISH  / ENGLISCH      / ANGLAISE   ............................ 1   º
echo ÇÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¶
echo º 2  GERMAN   / DEUTSCH       / ALLEMANGE  ............................ 2   º
echo ÇÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¶
echo º 3  FRENCH   / FRANZOESISCH  / FRANCAISE  ............................ 3   º
echo ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
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

