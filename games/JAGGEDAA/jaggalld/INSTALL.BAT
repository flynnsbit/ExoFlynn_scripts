@echo off
cls
if "%1" == "" goto NOPARAMS
if "%2" == "" goto NOPARAMS

:PARAMS
echo The Jagged Alliance DEADLY GAMES Update to v1.13d will be installed 
echo in %1:\%2. If you did NOT install the game there, 
echo press CTRL + BREAK now and type INSTALL [path] (where [path] is
echo the directory where the game was installed), otherwise
pause

dg113 -d -o %1:\%2

%1:
cd\
cd %2
md DAY
md PST
md AIM
md GUS
md MIC
type dg113.txt | more
echo.
echo Done! 
echo.
echo.
echo.

goto END

:NOPARAMS
echo.
echo Usage:
echo.
echo INSTALL drive path
echo.
echo e.g.  install   c   games\deadly
echo OR    install   c   deadly
echo.
echo.
echo.

:END



