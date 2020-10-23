echo off
cls
echo ÿ
echo Current working directory is:
chdir
echo ÿ
echo Please be certain that the current working directory is the one into which
echo you want Search and Destroy installed, and that your original S&D diskette
echo is in Drive A:
echo ÿ
echo Press any key to continue, or Ctrl-Break to abort.
echo ÿ
pause
copy b:*.com
copy b:*.dat
echo ÿ
if errorlevel=0 goto okay
echo Error during installation...please verify your procedure.
goto out
:okay
echo Hard disk installation completed
:out
