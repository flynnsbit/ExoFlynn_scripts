@echo off
checkcd
if errorlevel 1 goto cdrom
playcd
goto end

:cdrom
crw_~

:end
