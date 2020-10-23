echo off
if .%1 == . goto BADPARMS
if .%2 == . goto BADPARMS
if not .%3 == . goto BADPARMS
md %2:\stooges >nul
cd %2:\stooges >nul
%1:it %2
if errorlevel 1 goto ERROR
md %2:art >nul
md %2:pcs >nul
copy %1:*.* %2: >nul
del %2:uninstal.bat >nul
copy %1:art\*.* %2:art >nul
copy %1:pcs\*.* %2:pcs >nul
%2: >nul
install2 %1
:BADPARMS
echo.
echo Proper Invocation is:  INSTALL SOURCE DEST
echo.
echo SOURCE is floppy drive containing REEL 1
echo DEST   is disk where STOOGES is to be installed
echo.
echo Example:  INSTALL A C
echo.
goto END
:ERROR
echo.
echo Error installing STOOGES
echo.
:END
