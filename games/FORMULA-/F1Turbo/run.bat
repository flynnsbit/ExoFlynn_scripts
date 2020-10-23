:start
@echo off
cls
f1-turbo
cls
echo.
echo Try Again? (Y/N)
echo.
choice /C:YN /N (Y)es or (N)o

If errorlevel = 2 goto quit
If errorlevel = 1 goto start

:quit