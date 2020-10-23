@echo off
cls
grasprt money.ovr setup /nosvga /s
cls
echo Please do not choose the "IBM Internal Speaker, Foreground"
echo in the following sound setup routine (you may use any of the others)
pause
cls
setd
echo If your sound device is configured correctly,
echo you can type MONEY to begin the program
echo (Otherwise run SETUP again)
copy money money.bat

