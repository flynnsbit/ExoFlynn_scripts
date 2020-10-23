@echo off
cls
memcheck 6000000

if errorlevel 1 goto end

intro
cm2

goto stop

:end
echo Not Enough memory
echo -
echo Read HELP.TXT for more information
echo -

:stop
