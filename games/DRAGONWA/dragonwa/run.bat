:menu
@echo off
cls
echo.
echo Press 1 to Run Dragon Wars 
echo Press 2 to Transfer Characters from Bard's Tale
echo Press 3 to Quit
echo.
echo Character transfers require either Bard's Tale 1 or 2 to
echo be installed.
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto TRAN
if errorlevel = 1 goto GAME

:GAME
cls
@DRAGON
goto quit

:TRAN
cd..
copy .\bardtal1\*.tpw .\dragonwa\
copy .\bardtal2\*.tw .\dragonwa\
cd dragonwa
cls
@DWTRAN.COM
goto quit

:quit
exit