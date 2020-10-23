echo off
cls
if "%1"=="" goto err
if "%2"=="" goto err
goto start
:err
echo You must supply source and destination drives!
echo  ie.    INSTALL a: c:
goto errend
:start
md %2OBITUS
cd %2OBITUS
copy install2.bat %2
%2install2.bat %1 %2
:errend
