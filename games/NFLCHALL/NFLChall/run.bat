@echo off
cls
echo.
echo NFL Challenge requires a team disk to be loaded.
echo.
echo Press 1 to load the '84 Team Disk to Drive A
echo Press 2 to load the '89 Team Disk to Drive A
echo Press 3 to load the Greats Team Disk to Drive A
echo Press 4 to Quit
echo.
choice /c:1234 /N Please Choose

if errorlevel = 4 goto end
if errorlevel = 3 goto greats
if errorlevel = 2 goto 89
if errorlevel = 1 goto 84

:84
mount a .\games\NFLChall\nfl\84 -t floppy
cls
@cd nfl
@nfl
goto end

:89
mount a .\games\NFLChall\nfl\89 -t floppy
cls
@cd nfl
@nfl
goto end

:greats
mount a .\games\NFLChall\nfl\greats -t floppy
cls
@cd nfl
@nfl
goto end

:end