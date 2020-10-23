@echo off
ERASE FWING.SWP
SET FIG_WIN=C:\FWING\
SET DOS4G=quiet
REM ******************* drivers loading ******************
drv2
fm i
sb i 
REM ******************* start section ********************
C:\FWING\g.exe
REM ******************* drivers unloading ****************
sb u
fm u
drv2
SET FIG_WIN=
SET DOS4G=
