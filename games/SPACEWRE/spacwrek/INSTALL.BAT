echo off
cls
echo SPACE WRECKED INSTALLATION PROGRAM
echo ==================================
echo þ
echo Copyright Gremlin Graphics Ltd 1990, Konami 1991.
echo Konami (R) is a registered trademark of Konami Co., Ltd.
echo þ
if not "%1"=="" goto :install

echo Please type INSTALL [source] [destination]
echo where source is the drive containing SPACEWRECKED
echo and destination is any valid hard drive.
echo þ
echo eg: INSTALL A C
echo þ
echo NB: This command will create a directory called SPACE
echo on the root directory.


goto :end

:install

%2:
cd \
md space
cd space
copy %1:*.*
mg %1 %2


:end
