@echo off
cls
echo.
echo  You should see a video image on your monitor from the opening
echo  to Buster and the Beanstalk.
echo.
echo  Press [esc] to end the test.
Echo.
Echo.
Pause
cd \dossetup\hwtests
DISPTEST
mode co80
cls
cd \dossetup\techhelp
