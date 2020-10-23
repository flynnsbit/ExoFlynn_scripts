echo off
cls
if "%1" == "" goto ok
if "%1" == "C:" goto ok
if "%1" == "c:" goto ok
if "%1" == "D:" goto ok
if "%1" == "d:" goto ok
if "%1" == "E:" goto ok
if "%1" == "e:" goto ok
if "%1" == "F:" goto ok
if "%1" == "f:" goto ok
goto error
:ok
echo ÿ
echo     CHINESE CHECKERS INSTALLATION ROUTINE
echo ÿ
echo     This routine does the following things:
echo        1.  Creates the \CHINESE subdirectory
echo        2.  Copies the needed files on your hard drive
echo        3.  Runs the program
echo ÿ
echo     To play Chinese Checkers from now on, enter
echo     the command CHINESE at your DOS prompt.
echo ÿ
echo     (Press Ctrl-C or Ctrl-Break to Quit)
pause
if "%1" == "" goto null
if not exist %1\chinese\*.* md %1\chinese
echo Copying files ...
copy chinese.bat %1\ > nul
copy *.exe %1\chinese /v  > nul
copy *.wl  %1\chinese /v  > nul
copy *.txt %1\chinese /v  > nul
copy *.me  %1\chinese /v  > nul
%1
chinese
:null
if not exist c:\chinese\*.* md c:\chinese
echo Copying files ...
copy chinese.bat c:\ > nul
copy *.exe c:\chinese /v  > nul
copy *.wl  c:\chinese /v  > nul
copy *.txt c:\chinese /v  > nul
copy *.me  c:\chinese /v  > nul
c:
chinese
:error
echo  INSTALL %1 is not a valid parameter.  Try INSTALL C:
