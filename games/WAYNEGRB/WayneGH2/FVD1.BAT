echo off
cls
if "%1" == "" goto DriveNeeded
if %1 == install goto Install
if %1 == remove goto Remove

:DriveNeeded
echo         USAGE (to install Fight Video Disk 1 information for WGH II)
echo         WARNING: this should only be used if the Fight Video Disk has
echo                  already been installed.
echo         "fvd1 install"  or  "fvd1 remove"
goto End

:Install
copy common\fights.inf common\fights.wg2
copy common\fvd1.inf common\fights.inf
goto End

:Remove
copy common\fights.inf common\fvd1.inf
copy common\fights.wg2 common\fights.inf
goto End

:InstallError
echo ERROR:  Installation of "Wayne Gretzky Hockey II" into %2\WGHII was unsuccessful.
echo         This might be because your hard disk is full.
:End
echo 

