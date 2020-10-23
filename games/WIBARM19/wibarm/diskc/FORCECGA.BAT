echo off
Goto START
e cs:211 EB
w
q
REM  Debug script to force WIBARM.COM into CGA mode
REM  ----------------------------------------------
REM  You may change line 3 for the following effect:
REM
REM        FORCE ON  "e cs:211 EB"
REM        FORCE OFF "e cs:211 75"
:START
echo\
echo Patching WIBARM.COM to force CGA graphics mode...
echo\
If exist WIBARM.COM goto OK
echo WIBARM.COM Not in current directory!
goto END
:OK
DEBUG WIBARM.COM<FORCECGA.BAT>nul
ECHO WIBARM.COM now patched...
echo\
echo Another fine release from...
echo\
echo       The -=FiRM=-
:end
echo\
