@ECHO OFF
if exist CONFIG.TST goto NOSETUP
call CONFIG.BAT
cls
	 
:NOSETUP
echo Loading 3-D Table Sports... Please wait...
echo Copyright (c) 1995 by Time Warner Interactive.
TABLE.EXE %1 %2
