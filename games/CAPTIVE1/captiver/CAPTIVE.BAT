@ECHO off
INTRO
FILEPLAY
CAPPO %1
IF ERRORLEVEL 1 GOTO memerr
GOTO goodend

:memerr
@ECHO ----------------------------------------------
@ECHO Out of memory. Please free more of your memory
@ECHO before you re-enter Captive.
@ECHO ----------------------------------------------


:goodend
@ECHO on