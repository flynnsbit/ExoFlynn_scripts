:menu
@echo off
cls
echo.
echo Press 1 for Castle of Dr. Brain w/ SB16
echo Press 2 for Castle of Dr. Brain w/ MT32
rem echo Press 3 for Compaq-DOS Games v3 (1985)
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
rem if errorlevel = 3 goto epi3
if errorlevel = 2 goto epi2
if errorlevel = 1 goto epi1

:epi1
copy .\sb16\*.* .\
cls
SCIDHUV
goto menu

:epi2
copy .\mt32\*.* .\
cls
SCIDHUV
goto menu

:epi3
cls
cd v3
call DEMO3
cd ..
goto menu

:quit
exit