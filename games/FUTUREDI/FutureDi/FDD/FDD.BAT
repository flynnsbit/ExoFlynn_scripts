@ECHO OFF
IF "%1"=="/C" GOTO SETUP
IF "%1"=="/c" GOTO SETUP
ECHO For news check out Lifetime's forum on Compuserve with "GO LIFETIMES"
ECHO Use "DemoOnly" as password to disable playing permission
ECHO Option '/C' for Setup
GOTO START
:SETUP
SETUP.EXE
CLS
ECHO For news check out Lifetime's forum on Compuserve with "GO LIFETIMES"
ECHO Use "DemoOnly" as password to disable playing permission
:START
FD.EXE %1 %2 %3 %4 %5
EXIT
