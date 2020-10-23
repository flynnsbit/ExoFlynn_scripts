:menu
@echo off
cls
echo.
echo Press 1 for Protostar: War on the Frontier w/ SB16
echo Press 2 for Protostar: War on the Frontier w/ MT32
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto epi2
if errorlevel = 1 goto epi1

:epi1
cls
cd CDPROTO
copy .\sb16\TSAGE.CFG .\
cls
proto
cd ..
goto menu

:epi2
cls
cd CDPROTO
copy .\mt32\TSAGE.CFG .\
cls
proto
cd ..
goto menu

:epi3
cls
cd CDPROTO
copy .\CD\TSAGE.CFG .\
cls
proto
cd ..
goto menu

:quit
exit