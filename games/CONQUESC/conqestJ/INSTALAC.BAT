echo off
cls
echo CONQUEST OF JAPAN INSTALLATION STARTING......
c:
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
copy a:\*.* c:\conquest
cls
echo Insert DISK 2
pause
copy a:\*.* c:\conquest
echo Installation complete.
:exitit
echo on

