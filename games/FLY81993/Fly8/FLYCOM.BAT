@echo off

\net\termin 0x65

rem
rem Use this for slip
rem
rem call \net\slip
rem settimer
rem fly8 -z3 -P2=simple -r -NE486 -nslip.1 %1 %2 %3 %4 %5>>fly.log

rem
rem Use this for direct serial line access
rem
msdos\settimer
fly8 -z3 -P2=simple -r -NE486 -ncom.2:57600:n:8:1::4000 %1 %2 %3 %4 %5>>fly.log

