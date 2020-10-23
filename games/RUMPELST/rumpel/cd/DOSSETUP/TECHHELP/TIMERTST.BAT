@echo off
cls
cd \dossetup\hwtests
echo ********  Read the following instructions before continuing:
echo.
echo You should see something like the following:
echo.
echo     Tick! Elapsed = 1, Fast = 3
echo     Tick! Elapsed = 2, Fast = 26
echo     Tick! Elapsed = 3, Fast = 51
echo     Tick! Elapsed = 4, Fast = 73
echo     Tick! Elapsed = 5, Fast = 99
echo     Tick! Elapsed = 6, Fast = 127
echo     Tick! Elapsed = 7, Fast = 156
echo     Tick! Elapsed = 8, Fast = 184
echo     Tick! Elapsed = 9, Fast = 210
echo.
echo Hit any key to terminate.
echo.
echo.
pause
timetest
cd \dossetup\techhelp
