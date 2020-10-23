:menu
@echo off
cls
echo.
echo Press 1 to play Hoosier City Episode 1: Assault of the Orcs
echo Press 2 to play Hoosier City Episode 2: Liberating Freedom City
echo Press 3 to play Hoosier City Episode 3: Return to Oil City
echo Press 4 to Quit
echo.
choice /c:1234 /n Please Choose

If errorlevel = 4 goto exit
If errorlevel = 3 goto ep3
If errorlevel = 2 goto ep2
If errorlevel = 1 goto ep1

:ep1
cd 1
hc
goto menu

:ep2
cd 2
hc2
goto menu

:ep3
cd 3
hc3
goto menu

:exit