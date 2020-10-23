:menu
@echo off
cls
echo.
echo Press 1 for Mean 18
echo Press 2 for Mean 18 w/ Course Disk I
echo Press 3 for Mean 18 w/ Course Disk II
echo Press 4 for Mean 18 w/ Course Disk III
echo Press 5 for Mean 18 w/ Course Disk IV
echo Press 6 to Quit
echo.
choice /C:123456 /N Please Choose:

if errorlevel = 6 goto quit
if errorlevel = 5 goto M18IV
if errorlevel = 4 goto M18III
if errorlevel = 3 goto M18II
if errorlevel = 2 goto M18I
if errorlevel = 1 goto M18

:M18
mount a .\games\Mean18\gamedisk\ -t floppy
a:
cls
@call go
goto quit

:M18I
mount a .\games\Mean18\Disk1\ -t floppy
a:
cls
@golf
goto quit

:M18II
mount a .\games\Mean18\Disk2\ -t floppy
a:
cls
@golf
goto quit

:M18III
mount a .\games\Mean18\Disk3\ -t floppy
a:
cls
@golf
goto quit

:M18IV
mount a .\games\Mean18\Disk4\ -t floppy
a:
cls
@golf
goto quit

:quit
exit