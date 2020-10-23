echo off
cls
echo HEROQUEST INSTALLATION PROGRAM
echo ==================================
echo þ
echo Copyright Gremlin Graphics Ltd 1991-2
echo þ
if not "%1"=="" goto :install

echo Please type INSTALL [source] [destination]
echo where source is the drive containing HEROQUEST
echo and destination is any valid hard drive.
echo þ
echo eg: INSTALL A C
echo þ
echo NB: This command will create a directory called HEROQUES
echo on the root directory.


goto :end

:install

%2:
cd \
md HEROQUES
cd HEROQUES
copy %1:*.*
mg %1 %2


:end
