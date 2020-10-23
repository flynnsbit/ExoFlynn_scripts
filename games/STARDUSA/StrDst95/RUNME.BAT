@echo off
rem This batch will work fine from a CD-ROM
if not exist stardust.cfg setup c:
:loop
rem INTRO.EXE returns ERRORLEVEL 0 if a key was hit
intro.exe
if errorlevel 1 goto loop
stardust.exe %1 %2 %3 %4 %5
