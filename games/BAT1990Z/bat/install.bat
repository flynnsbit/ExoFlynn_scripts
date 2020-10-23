echo off
cls
if "%1"=="" goto nodrive
if %0==a:install goto drivea
if %0==b:install goto driveb
if %0==A:INSTALL goto drivea
if %0==B:INSTALL goto driveb
goto batinst
:drivea
a:
goto batinst
:driveb
b:
:batinst
echo B.A.T.  Hard Disk Installation   VGA version
echo ********************************************
echo.    
copy *.* %1\BATVGA\*.*
echo.
echo.
echo  Disk installation complete.
goto END
:nodrive
echo Please specify drive to install B.A.T. onto.  (eg. INSTALL C:)
echo.        
echo.        
:END
