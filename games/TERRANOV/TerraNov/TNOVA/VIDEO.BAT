@echo off
if exist univbe.drv goto rem_Drv
:create_Drv
echo Building new uniVBE Driver file
D:\instdata\uvconfig.exe -gen -p .
echo driver file successfully built, TN will now run with uniVBE
goto fin_Drv
:rem_Drv
echo Removing existing uniVBE Driver file
echo Terra Nova will now run without uniVBE
del univbe.drv
:fin_Drv
