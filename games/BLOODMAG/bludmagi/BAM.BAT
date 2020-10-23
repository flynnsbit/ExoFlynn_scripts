@echo off
del *.swp >NUL
call grvdet.exe
if errorlevel 1 goto LoadStuff
goto Exit

:LoadStuff
rem Found a Gravis Ultrasound
call loadpats

:Exit
set dos4gvm=1
EREGCARD
BAMMAIN.EXE
