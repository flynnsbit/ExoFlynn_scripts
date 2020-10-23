:menu
@echo off
cls
echo.
echo Please choose which map you would like to try:
echo.
echo A - Abstractions     I - Flooded          Q - Office Hell
echo B - Arena            J - Fountain         R - Penta
echo C - Army Arena       K - Gauntlet         S - Spiral
echo D - Battle at Home   L - Mandyben?        T - The Kill
echo E - The Cage         M - Manhunter        U - Nightmare Tower
echo F - Demented         N - Maze             V - Valhalla
echo G - Dogring          O - Mezza
echo H - Fleshville       P - Mirrored Rooms
echo.
choice /C:ABCDEFGHIJKLMNOPQRSTUV /N Please Choose:

if errorlevel = 22 goto V
if errorlevel = 21 goto U
if errorlevel = 20 goto T
if errorlevel = 19 goto S
if errorlevel = 18 goto R
if errorlevel = 17 goto Q
if errorlevel = 16 goto P
if errorlevel = 15 goto O
if errorlevel = 14 goto N
if errorlevel = 13 goto M
if errorlevel = 12 goto L
if errorlevel = 11 goto K
if errorlevel = 10 goto J
if errorlevel = 9 goto I
if errorlevel = 8 goto H
if errorlevel = 7 goto G
if errorlevel = 6 goto F
if errorlevel = 5 goto E
if errorlevel = 4 goto D
if errorlevel = 3 goto C
if errorlevel = 2 goto B
if errorlevel = 1 goto A

:A
cls
@quake +map ABSTRACT
goto quit

:B
cls
@quake +map ARENA2
goto quit

:C
cls
@quake +map ARENAM
goto quit

:D
cls
@quake +map BATTLE
goto quit

:E
cls
@quake +map CAGE
goto quit

:F
cls
@quake +map DEMENTED
goto quit

:G
cls
@quake +map DOGRING
goto quit

:H
cls
@quake +map FLESHVIL
goto quit

:I
cls
@quake +map FLOOD
goto quit

:J
cls
@quake +map FOUNTAIN
goto quit

:K
cls
@quake +map GAUNTLET
goto quit

:L
cls
@quake +map MANDYBEN
goto quit

:M
cls
@quake +map MANHUNT
goto quit

:N
cls
@quake +map MAZE
goto quit

:O
cls
@quake +map MEZZA
goto quit

:P
cls
@quake +map MIRROR
goto quit

:Q
cls
@quake +map OFFICE
goto quit

:R
cls
@quake +map PENTA
goto quit

:S
cls
@quake +map SPIRAL
goto quit

:T
cls
@quake +map THEKILL
goto quit

:U
cls
@quake +map TOWER
goto quit

:V
cls
@quake +map VALHALLA
goto quit

:quit
exit