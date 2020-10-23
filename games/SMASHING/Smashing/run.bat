:menu
@echo off
cls
echo.
echo Press 1 to play the Intro levels
echo Press 2 to play the Default level
echo Press 3 to play the Desert levels
echo Press 4 to play the Forest level
echo Press 5 to play the Funky level
echo Press 6 to play the Future level
echo Press 7 to play the Hell level
echo Press 8 to play the Ice level
echo Press 9 to Quit
echo.
choice /C:123456789 /N Please Choose:

if errorlevel = 9 goto quit
if errorlevel = 8 goto sp8
if errorlevel = 7 goto sp7
if errorlevel = 6 goto sp6
if errorlevel = 5 goto sp5
if errorlevel = 4 goto sp4
if errorlevel = 3 goto sp3
if errorlevel = 2 goto sp2
if errorlevel = 1 goto sp1

:sp1
cls
echo.
echo Press 1 to play the First Intro level
echo Press 2 to play the Second Intro level
echo Press 3 to return to the main menu
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto menu
if errorlevel = 2 goto i2
if errorlevel = 1 goto i1

:i1
cls
smash intro
goto menu

:i2
cls
smash intro2
goto menu

:sp2
cls
smash DEFAULT
goto menu

:sp3
cls
echo.
echo Press 1 to play the First Desert level
echo Press 2 to play the Second Desert level
echo Press 3 to return to the main menu
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto menu
if errorlevel = 2 goto d2
if errorlevel = 1 goto d1

:d1
cls
smash desert
goto menu

:d2
cls
smash desert2
goto menu

:sp4
cls
smash forest
goto menu

:sp5
cls
smash funky
goto menu

:sp6
cls
smash future
goto menu

:sp7
cls
smash hell
goto menu

:sp8
cls
smash ice
goto menu

:quit
exit