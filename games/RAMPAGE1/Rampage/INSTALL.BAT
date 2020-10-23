echo off
if "%1"=="" goto DEFAULT
cls
echo .
echo             Activision's RAMPAGE Hard Disk Installation
echo ----------------------------------------------------------------
echo .
echo     Usage is :  INSTALL   (Installs Rampage on drive C:)
echo                   OR
echo                 INSTALL drive  (no colon)  (Installs rampage on drive:)
echo    for example INSTALL D would install rampage on hard drive D:
echo .
echo ----------------------------------------------------------------
echo .
echo                  This installation for RAMPAGE will:
echo -- make a sub-directory named rampage into the root directory of drive %1:
echo -- copy the appropriate files from this game disk to \RAMPAGE
echo .
echo ----------------------------------------------------------------
echo .
echo                  Type CTRL C to abort installation to
echo                  %1:\RAMPAGE
echo .
pause
cls
md %1:\rampage
cd %1:\rampage
echo .
echo COPYING RAMPAGE FILES ...
copy RAMPAGE.exe %1: >NUL
copy *.p?? %1: >NUL
del %1:install.bat >NUL
%1:
cls
echo .
echo Hard disk installation is complete to %1:\rampage
echo :
echo :  Enter:
echo :
echo :    RAMPAGE  to start the game
echo :
echo .
goto END
:DEFAULT
install C

:END
