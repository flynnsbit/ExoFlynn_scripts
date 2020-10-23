@echo off
if exist c:\warplan.bat goto play
if exist c:\warplan.but goto end

:setup
w95setup\setup.exe
goto end

:play
c:\warplan.bat

:end
