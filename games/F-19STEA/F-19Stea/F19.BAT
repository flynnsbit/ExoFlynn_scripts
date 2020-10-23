cls
@echo off
rem ansi.com works in dosbox but not in w9x.  i guess only works in real mode.
ansi ~[37;44;1m
echo.
echo  ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo  บ                                                                            บ
echo  บ                   F-19 Stealth Fighter - Version 435.04                    บ
echo  บ                                                                            บ
echo  บ    Program & Audio-visual Copyright (C) 1988 by MicroProse Software,Inc.,  บ
echo  บ                            All Rights Reserved.                            บ
echo  บ                                                                            บ
echo  ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
echo.
ansi ~[33;40m
echo.
echo                            Select sound driver:
echo.
echo                         1) IBM Sounds (PC Speaker support)
echo                         2) Tandy Sounds (3 channel beeper music)
echo                         3) Innovation SSI-2001 Sounds (C64 SID; DosBox Daum)
echo                         4) AdLib/Sound Blaster (OPL2 FM MIDI support)
echo                         5) Roland MT-32 sounds (DosBox Daum or some else)
echo.
echo.
echo.
echo.
ansi ~[14;49f
choice /c:12345 /n
if errorlevel 2 goto tandy
rem dosbox bug; only handles one errorlevel check at a time. otherwise would set right here & forgo all the goto crap.
if errorlevel 3 goto innovation
if errorlevel 4 goto adlib
if errorlevel 5 goto roland

rem default
:ibm
rem echo ibm
set sound=i
goto exit

:tandy
rem dosbox errorlevel bug workaround
if errorlevel 3 goto innovation
rem echo tandy
set sound=t
goto exit

:innovation
if errorlevel 4 goto adlib
rem echo innovation
set sound=b
goto exit

:adlib
if errorlevel 5 goto roland
rem echo adlib
set sound=a
goto exit

:roland
rem echo roland
set sound=r

:exit
ansi ~[0m
rem echo /a%sound%
cd f19
f19.com /a%sound%
cd ..
