echo off
cls
if exist \tlc\tcv\cove.exe goto :indirectory
if not exist cove.exe goto :notthere
echo The computer is loading
echo Treasure Cove!
cove.exe %1 %2 %3
goto :end
:indirectory
echo The computer is loading
echo Treasure Cove!
cd \tlc\tcv
cove.exe %1 %2 %3
cd \
goto :end
:notthere
echo Treasure Cove! was not
echo found on this drive.
:end
