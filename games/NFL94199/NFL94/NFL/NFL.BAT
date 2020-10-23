@echo off
soundrv
IF ERRORLEVEL 1 GOTO ABORTED1
midpak
IF ERRORLEVEL 1 GOTO ABORTED1
nflmcga
midpak u
soundrv u
goto FINI
:ABORTED1
echo sound and music drivers not loaded! run setd.exe & setm.exe!
:FINI
