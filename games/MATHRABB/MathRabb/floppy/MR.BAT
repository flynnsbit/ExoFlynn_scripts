echo off
cls
if exist \tlc\mr\mrprog.exe goto :indirectory
if not exist mrprog.exe goto :notthere
echo The computer is loading
echo Math Rabbit...
mrprog.exe %1 %2 %3
goto :end
:indirectory
echo The computer is loading
echo Math Rabbit...
cd \tlc\mr
mrprog.exe %1 %2 %3
cd \
goto :end
:notthere
echo Math Rabbit was not
echo found on this drive.
:end
