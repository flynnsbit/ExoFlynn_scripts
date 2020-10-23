echo off
cls
if exist \tlc\tms\tmprog.exe goto :indirectory
if not exist tmprog.exe goto :notthere
echo The computer is loading
echo Treasure MathStorm!
tmprog.exe %1 %2 %3
goto :end
:indirectory
echo The computer is loading
echo Treasure MathStorm!
cd \tlc\tms
tmprog.exe %1 %2 %3
cd \
goto :end
:notthere
echo Treasure MathStorm! was not
echo found on this drive.
:end
