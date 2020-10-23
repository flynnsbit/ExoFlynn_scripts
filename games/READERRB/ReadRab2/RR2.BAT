echo off
cls
if not exist \tlc\rr2\rr2.exe goto :notthere
if exist \mouse.com \mouse > nul:
cd \tlc\rr2
rr2.exe %1 %2 %3 %4 %5
cd \
goto :end
:notthere
echo Reader Rabbit 2 could 
echo not be found on this drive.
:end
