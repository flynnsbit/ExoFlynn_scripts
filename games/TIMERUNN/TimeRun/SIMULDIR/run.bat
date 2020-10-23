:menu
@echo off
cls
echo.
echo Press A for Time Runners 1: Gateways in Time
echo Press B for Time Runners 2: The Space Stone
echo Press C for Time Runners 3: The Big Run
echo Press D for Time Runners 4: The Castle of Fear
echo Press E for Time Runners 5: The Black Knight
echo Press N for the Next Page
echo Press Q to Quit
echo.
choice /C:ABCDENQ /N Please Choose:

if errorlevel = 7 goto quit
if errorlevel = 6 goto menu2
if errorlevel = 5 goto epi5
if errorlevel = 4 goto epi4
if errorlevel = 3 goto epi3
if errorlevel = 2 goto epi2
if errorlevel = 1 goto epi1

:menu2
cls
echo.
echo Press A for Time Runners 6: The Bewitched Forest
echo Press B for Time Runners 7: In the Land of the Invaders
echo Press C for Time Runners 8: The Impregnable Fortress
echo Press D for Time Runners 9: The Time Demon
echo Press E for Time Runners 10: The Time Sentry
echo Press N for the Next Page
echo Press P for the Previous Page
echo Press Q to Quit
echo.
choice /C:ABCDENPQ /N Please Choose:

if errorlevel = 8 goto quit
if errorlevel = 7 goto menu
if errorlevel = 6 goto menu3
if errorlevel = 5 goto epi10
if errorlevel = 4 goto epi9
if errorlevel = 3 goto epi8
if errorlevel = 2 goto epi7
if errorlevel = 1 goto epi6

:menu3
cls
echo.
echo Press A for Time Runners 11: The Steel City
echo Press B for Time Runners 12: A Target for the Cyborg
echo Press C for Time Runners 13: Cyberkiller
echo Press D for Time Runners 14: Toraxid: War Star
echo Press E for Time Runners 15: At the Speed of Light
echo Press N for the Next Page
echo Press P for the Previous Page
echo Press Q to Quit
echo.
choice /C:ABCDENPQ /N Please Choose:

if errorlevel = 8 goto quit
if errorlevel = 7 goto menu2
if errorlevel = 6 goto menu4
if errorlevel = 5 goto epi15
if errorlevel = 4 goto epi14
if errorlevel = 3 goto epi13
if errorlevel = 2 goto epi12
if errorlevel = 1 goto epi11

:menu4
cls
echo.
echo Press A for Time Runners 16: The Galaxy Emperor
echo Press B for Time Runners 17: The Living Labyrinth
echo Press C for Time Runners 18: The Killer Shadow
echo Press D for Time Runners 19: The Nightmare Prince
echo Press E for Time Runners 20: The Mountains of Death
echo Press N for the Next Page
echo Press P for the Previous Page
echo Press Q to Quit
echo.
choice /C:ABCDENPQ /N Please Choose:

if errorlevel = 8 goto quit
if errorlevel = 7 goto menu3
if errorlevel = 6 goto menu5
if errorlevel = 5 goto epi20
if errorlevel = 4 goto epi19
if errorlevel = 3 goto epi18
if errorlevel = 2 goto epi17
if errorlevel = 1 goto epi16

:menu5
cls
echo.
echo Press A for Time Runners 21: The Black Dragon
echo Press B for Time Runners 22: The Eternal Damned
echo Press C for Time Runners 23: The Time Monarch
echo Press D for Time Runners 24: Beyond All Dimensions
echo Press E for Time Runners 25: The Lost Planet Earth
echo Press N for the Next Page
echo Press P for the Previous Page
echo Press Q to Quit
echo.
choice /C:ABCDENPQ /N Please Choose:

if errorlevel = 8 goto quit
if errorlevel = 7 goto menu4
if errorlevel = 6 goto menu6
if errorlevel = 5 goto epi25
if errorlevel = 4 goto epi24
if errorlevel = 3 goto epi23
if errorlevel = 2 goto epi22
if errorlevel = 1 goto epi21

:menu6
cls
echo.
echo Press A for Time Runners 26: The Time Warrior
echo Press B for Time Runners 27: Red Night
echo Press C for Time Runners 28: Beyond the End
echo Press D for Time Runners 29: The Last Revelation
echo Press E for Time Runners 30: The Final Fight
echo Press P for the Previous Page
echo Press Q to Quit
echo.
choice /C:ABCDEPQ /N Please Choose:

if errorlevel = 7 goto quit
if errorlevel = 6 goto menu5
if errorlevel = 5 goto epi30
if errorlevel = 4 goto epi29
if errorlevel = 3 goto epi28
if errorlevel = 2 goto epi27
if errorlevel = 1 goto epi26

:epi1
cd TR-01
cls
@manager
cd ..
goto menu

:epi2
cd TR-02
cls
@manager
cd ..
goto menu

:epi3
cd TR-03
cls
@manager
cd ..
goto menu

:epi4
cd TR-04
cls
@manager
cd ..
goto menu

:epi5
cd TR-05
cls
@manager
cd ..
goto menu

:epi6
cd TR-06
cls
@manager
cd ..
goto menu

:epi7
cd TR-07
cls
@manager
cd ..
goto menu

:epi8
cd TR-08
cls
@manager
cd ..
goto menu

:epi9
cd TR-09
cls
@manager
cd ..
goto menu

:epi10
cd TR-10
cls
@manager
cd ..
goto menu

:epi11
cd TR-11
cls
@manager
cd ..
goto menu

:epi12
cd TR-12
cls
@manager
cd ..
goto menu

:epi13
cd TR-13
cls
@manager
cd ..
goto menu

:epi14
cd TR-14
cls
@manager
cd ..
goto menu

:epi15
cd TR-15
cls
@manager
cd ..
goto menu

:epi16
cd TR-16
cls
@manager
cd ..
goto menu

:epi17
cd TR-17
cls
@manager
cd ..
goto menu

:epi18
cd TR-18
cls
@manager
cd ..
goto menu

:epi19
cd TR-19
cls
@manager
cd ..
goto menu

:epi20
cd TR-20
cls
@manager
cd ..
goto menu

:epi21
cd TR-21
cls
@manager
cd ..
goto menu

:epi22
cd TR-22
cls
@manager
cd ..
goto menu

:epi23
cd TR-23
cls
@manager
cd ..
goto menu

:epi24
cd TR-24
cls
@manager
cd ..
goto menu

:epi25
cd TR-25
cls
@manager
cd ..
goto menu

:epi26
cd TR-26
cls
@manager
cd ..
goto menu

:epi27
cd TR-27
cls
@manager
cd ..
goto menu

:epi28
cd TR-28
cls
@manager
cd ..
goto menu

:epi29
cd TR-29
cls
@manager
cd ..
goto menu

:epi30
cd TR-30
cls
@manager
cd ..
goto menu

:quit
exit