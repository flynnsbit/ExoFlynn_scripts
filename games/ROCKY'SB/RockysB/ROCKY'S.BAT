ECHO OFF
BREAK OFF
scrnsav
COLORTST
:TOPMENU
ROCMENU
if errorlevel 8 goto ROCEND
IF ERRORLEVEL 7 GOTO ROCCHAL
IF ERRORLEVEL 6 GOTO ROCFF
IF ERRORLEVEL 5 GOTO ROCHOW
IF ERRORLEVEL 4 GOTO ROCAON
IF ERRORLEVEL 3 GOTO ROCWIRE
IF ERRORLEVEL 2 GOTO ROCTUT1
GOTO TOPMENU
:ROCTUT1
ROCTUT1
GOTO TOPMENU
:ROCWIRE
ROCWIRE
GOTO TOPMENU
:ROCAON
ROCAON
GOTO TOPMENU
:ROCHOW
ROCHOW
GOTO TOPMENU
:ROCFF
ROCFF
GOTO TOPMENU
:ROCCHAL
ROCCHAL
GOTO TOPMENU
:ROCEND
scrnsav
