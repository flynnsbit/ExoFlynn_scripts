echo off
cls
echo DOLPHIN BOATING SIMULATOR from DOLPHIN MARINE SYSTEMS
echo *     HERCULES ADAPTOR & HARD DISK (C:) SYSTEM      *
echo *     Please put the MASTER DISK in Drive A:        *
PAUSE
C:
CD\DOLPHIN
if exist DMS6SCOR goto AOK
BOATERR
:AOK
echo ***               GOOD BOATING !                   ***
ASSIGN A=C B=C
simcga
setcga
dolps
dms6f100
dedolps
setmono
assign
CD\
