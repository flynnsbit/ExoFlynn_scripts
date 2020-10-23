:menu
@echo off
cls
echo.
echo Press 1 to start a new game of ISC
echo Press 2 to continue a previous game of ISC
echo Press 4 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto epi2
if errorlevel = 1 goto epi1

:epi1
@cd ISC
@CLS
@call ISC 1 N
@cd ..
cls

goto menu

:epi2
@CD ISC
@CLS
@CALL ISC
@CD ..
cls

goto menu

:quit
exit