@echo off
if not '%windir%'=='' goto WinRunning
eregcard.exe
rdh.exe
goto End

:WinRunning
eregcard.exe
start rdh.pif
goto End

:End
