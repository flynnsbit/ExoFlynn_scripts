echo off
cls
echo CONQUEST OF JAPAN INSTALLATION STARTING......
e:
md\CONQUEST
if errorlevel 0 goto nextstep
echo Installation failed.
goto exitit
:nextstep
cd\CONQUEST
if errorlevel 0 goto nextst2
echo Installation failed.
goto exitit
:nextst2
copy b:\*.* e:\CONQUEST
cls
echo Insert DISK 2
pause
copy b:\*.* e:\CONQUEST
echo Installation complete.
:exitit
echo on


