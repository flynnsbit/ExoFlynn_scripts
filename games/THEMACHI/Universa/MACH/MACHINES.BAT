@echo off
cls
if not exist eation.cfg goto s_set

:play
intro.exe
machine.exe
tm.exe
goto end

:s_set
init.exe
setsound.exe
if exist eation.cfg goto play
@echo Sound configuration file not found - please try again

:end
