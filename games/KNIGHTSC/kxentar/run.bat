:menu
@echo off
cls
echo.
echo Press 1 for Knight's of Xentar (NR-18)
echo Press 2 for Knight's of Xentar (NR-13, Censored)
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto epi2
if errorlevel = 1 goto epi1

:epi1
cls
call KX
goto menu

:epi2
cls
cd floppy
call KX
goto menu

:quit
exit