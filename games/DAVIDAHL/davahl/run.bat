:menu
@echo off
cls
echo.
echo Press A for Marco Polo
echo Press B for Westward HO!
echo Press C for The Longest Automobile Race
echo Press D for The Orient Express
echo Press E for Amelia Earhart: Around the World Flight
echo Press F for Tour de France
echo Press G for Appalachian Trail
echo Press H for Subway Scavenger
echo Press I for Hong Kong Hustle
echo Press J for Voyage to Neptune
echo Press K to Quit 
echo.
choice /C:ABCDEFGHIJK /N Please Choose: 

if errorlevel = 11 goto end
if errorlevel = 10 goto nept
if errorlevel = 9 goto hong
if errorlevel = 8 goto subway
if errorlevel = 7 goto trail
if errorlevel = 6 goto tour
if errorlevel = 5 goto amelia
if errorlevel = 4 goto orient
if errorlevel = 3 goto auto
if errorlevel = 2 goto west
if errorlevel = 1 goto marco

:marco
cls
@call marco.bat
goto menu

:west
cls
@call WESTHO.bat
goto menu

:auto
cls
@call AUTORACE.bat
goto menu

:orient
cls
@call ORIENT.bat
goto menu


:amelia
cls
@call EARHART.bat
goto menu


:tour
cls
@call TOUR.bat
goto menu


:trail
cls
@call APP.bat
goto menu


:subway
cls
@call SUBWAY.bat
goto menu


:hong
cls
@call HONGKONG.bat
goto menu


:nept
cls
@call NEPTUNE.bat
goto menu

:end