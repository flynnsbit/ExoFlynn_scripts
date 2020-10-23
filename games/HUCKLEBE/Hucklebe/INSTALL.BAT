@echo off

if "%1" == "" goto error

cls
echo Installing Huckleberry Hound to %1
echo.

md %1
copy *.??? %1  >NUL
cd %1

echo Installation Complete
goto end

:error
cls
echo To Install  Huckleberry Hound use..  "INSTALL <drv>:\<path>"
echo.
echo  eg.   install c:\huck
echo.

:end


