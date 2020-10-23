:menu
@echo off
cls
echo.
echo Press 1 for UEFA Champions League 1996-97
echo Press 2 for UEFA Champions League 1996-97 w/ 3DFX
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto epi2
if errorlevel = 1 goto epi1

:epi1
cls
UEFA
cd ..
goto exit

:epi2
cls
UEFA3DFX
goto exit

:quit
exit