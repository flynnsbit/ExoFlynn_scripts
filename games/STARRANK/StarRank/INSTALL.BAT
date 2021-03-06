echo off
if "%1"=="" goto DEFAULT
cls
echo .
echo             Activision's BOXING Hard Disk Installation
echo ----------------------------------------------------------------
echo .
echo     Usage is :  INSTALL   (Installs Boxing on drive C:)
echo                   OR
echo                 INSTALL drive  (no colon)  (Installs Boxing on drive:)
echo    for example INSTALL D would install Boxing on hard drive D:
echo .
echo ----------------------------------------------------------------
echo .
echo                  This installation for Boxing will:
echo -- make a sub-directory named BOXING into the root directory of drive %1:
echo -- copy the appropriate files from this game disk to \BOXING
echo .
echo ----------------------------------------------------------------
echo .
echo                  Type CTRL C to abort installation to
echo                  %1:\BOXING
echo .
pause
cls
md %1:\BOXING
cd %1:\BOXING
echo .
echo COPYING BOXING FILES ...
echo 5
copy *.bat %1: >NUL
echo 4
copy *.bin %1: >NUL
echo 3
copy *.dat %1: >NUL
echo 2
copy *.exe %1: >NUL
echo 1
copy *.pcx %1: >NUL
del %1:install.bat >NUL
%1:
cls
echo .
echo Hard disk installation is complete to %1:\BOXING
echo :
echo :  Enter:
echo :
echo :    BOXING  to start the game
echo :
echo :  or enter:
echo :
echo :    SETUP   to set the system configuration
echo :            (joysticks, graphics, sound, ...)
echo :
echo .
goto END
:DEFAULT
install C

:END
                                           