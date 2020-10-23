@echo off

if "%1" == "" goto error

cls
echo Installing Euro Soccer  (Disk2) to %1
echo.

copy *.??? %1  >NUL
cd %1

echo Euro Soccer Installation Complete  ...
goto end

:error
cls
echo To Install  Euro Soccer use..  "INSTALL <drv>:\<path>"
echo.
echo  eg.   install c:\euro
echo.

:end

