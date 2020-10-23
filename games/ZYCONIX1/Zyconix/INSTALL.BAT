@echo off

if "%1" == "" goto error

cls
echo Installing Zyconix to %1
echo.

md %1
copy *.??? %1  >NUL
cd %1

echo ...Mission Accomplished
goto end

:error
cls
echo To Install Zyconix use..  "INSTALL <drv>:\<path>"
echo.
echo  eg.   install c:\zycon
echo.

:end
