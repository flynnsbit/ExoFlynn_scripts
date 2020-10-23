:menu
@echo off
cls
echo.
echo Press 1 for Rebel Decade v1
echo Press 2 for Rebel Decade v6
echo Press 3 for Rebel Decade v7
echo Press 4 for Rebel Decade v8
echo Press 5 for Rebel Decade v9
echo Press 6 for Rebel Decade v10
echo Press 7 for Rebel Decade XP
echo Press 8 for Rebel Decade v12
echo Press 9 to Quit
echo.
echo Versions prior to v6 were promotional shareware releases.
echo v1 was a limited v6
echo v1.2 was a limited v8
echo v3 was a limited v10 (except on Fridays, when it was a full version)
echo.
echo This is a complete collection of the full versions according to the author.
echo.
choice /C:123456789 /N Please Choose:

if errorlevel = 9 goto quit
if errorlevel = 8 goto epi12
if errorlevel = 7 goto epiXP
if errorlevel = 6 goto epi10
if errorlevel = 5 goto epi9
if errorlevel = 4 goto epi8
if errorlevel = 3 goto epi7
if errorlevel = 2 goto epi6
if errorlevel = 1 goto epi1

:epi1
cls
cd 1
config -set "cpu cycles=10000"
rebel
cd ..
goto menu

:epi6
cls
cd 6
config -set "cpu cycles=10000"
rebel
cd ..
goto menu

:epi7
cls
cd 7
config -set "cpu cycles=15000"
rebel s
cd ..
goto menu

:epi8
cls
cd 8config -set "cpu cycles=20000"
REBEL8
cd ..
goto menu

:epi9
cls
cd 9
config -set "cpu cycles=20000"
rebel
cd ..
goto menu

:epi10
cls
cd 10
config -set "cpu cycles=30000"
rebel
cd ..
goto menu

:epiXP
cls
cd XP
config -set "cpu cycles=30000"
rebel
cd ..
goto menu

:epi12
cls
cd 12
config -set "cpu cycles=30000"
rebel
cd ..
goto menu

:quit
exit