:menu
@echo off
cls
echo.
echo Press 1 for Pinball Dreams II
echo Press 2 for Pinball Dreams Deluxe CD
echo Press 3 to Quit
echo.
echo The CD version combines Pinball Dreams I & II
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto CD
if errorlevel = 1 goto II

:II
cd 21STCENT\DREAMS2
cls
@call DREAMS2
goto quit

:CD
d:
cls
@call deluxe
goto quit

:quit
exit