:menu
@echo off
cls
echo.
echo Press 1 for Conan: The Cimmerian w/ SB16
echo Press 2 for Conan: The Cimmerian w/ MT32
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto epi2
if errorlevel = 1 goto epi1

:epi1
cls
cd conan
copy .\sb16\GAME.CFG .\
cls
call conan
cd ..
goto menu

:epi2
cls
cd conan
copy .\mt32\GAME.CFG .\
cls
call conan
cd ..
goto menu

:quit
exit