@ECHO OFF
REM *******************************************************
REM *          Pinball 4000 - V. M2PC4001 FINAL           *
REM *******************************************************
IF EXIST SOUND.CFG GOTO setsoundskip
SETSOUND
:setsoundskip
M2PCINTR
M2PCMAIN
