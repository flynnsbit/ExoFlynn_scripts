@echo off
if exist road.cfg goto no_setup
call help.bat
call setup.bat
goto end
:no_setup
call roadhog.bat
:end
