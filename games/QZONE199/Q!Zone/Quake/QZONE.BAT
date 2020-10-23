@echo off

__QZ.exe 

:loopit

if errorlevel 6 call c:\_qzone_.bat
if errorlevel 4 goto end
if errorlevel 1 goto error

@echo off
echo.
echo Restarting Q!Zone
echo.
if exist c:\_qzone_.bat del c:\_qzone_.bat > nul
if exist c:\qzone.cfg attrib +h c:\qzone.cfg > nul
__QZ.exe
goto loopit

:error


:end
if exist c:\_qzone_.bat del c:\_qzone_.bat > nul
if exist c:\qzone.cfg attrib +h c:\qzone.cfg > nul
echo.
                                                                             
