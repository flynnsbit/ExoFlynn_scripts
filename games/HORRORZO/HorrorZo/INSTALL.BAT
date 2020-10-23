





echo off
if "%1" == "" goto gettail
mkdir %1\ZOMBIES
echo *
echo *
echo *    Copying HORROR ZOMBIES files
echo *
echo *
echo *
copy *.* %1\ZOMBIES
echo *

cls
echo *
echo *
echo *   HORROR ZOMBIES INSTALLED
echo *
echo *
echo *
echo *

%1
cd \ZOMBIES
goto finish

:gettail
echo *
echo *
echo * Please specify the hard drive to install files onto.
echo *
echo * example:         install c:
echo *
echo *

:finish

