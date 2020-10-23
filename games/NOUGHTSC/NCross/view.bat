@echo off
ftp -n -s:fix\view.tmp ftp.tripod.com
echo.
echo Usernames
type fix\name.dat
echo.
echo.
pause
del fix\name.dat
