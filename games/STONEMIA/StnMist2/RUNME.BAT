@echo off
rem Batch file to execute STONE MIST VOLUME II
rem Copyright 1988-1994 Bit Brother Software.
rem SHAREWARE VERSION 1994
regsm2.exe
intro.exe
bbssetup.exe
if errorlevel=10 goto fin
pict2A.exe
regsm2a.exe
dw3-3.exe
if errorlevel=10 goto end
if errorlevel=5  goto end1
:end
endgame.exe
goto fin
:end1
endgame2.exe
:fin
