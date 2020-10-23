@echo off

if "%1" == "" goto error

cls
echo Installing Euro Soccer to %1
echo.

md %1
copy *.??? %1  >NUL
;cd %1

echo Disk 1 Installation Complete ...
echo Please Insert Disk2 And Type Install %1
goto end

:error
cls
echo To Install Euro Soccer use..  "INSTALL <drv>:\<path>"
echo.
echo  eg.   install c:\euro
echo.

:end

