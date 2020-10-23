@echo off
@echo.
IF "%1" == "" goto :error
:nodisk1
if exist drwho.exe goto :disk1
@echo.
@echo Wrong disk in drive, please insert Dalek Attack disk 1.
@echo.
pause
goto :nodisk1
:disk1
@echo Copying files...
copy *.* %1\drwho
@echo.
@echo ********************
@echo Disk 1 complete
@echo Please insert disk 2
@echo ********************
@echo.
pause
:nodisk2
IF exist data.dat goto :disk2
@echo.
@echo Wrong disk in drive, please insert Dalek Attack disk 2.
@echo.
pause
goto :nodisk2
:disk2
@echo Copying files...
copy *.* %1drwho
del %1drwho\install.*
@echo.
@echo To run Dalek Attack, type:-
@echo    C:
@echo    CD \DRWHO
@echo    DRWHO
@echo.
@echo with the original disk in your drive.
goto :end
:error
@echo ERROR: Destination disk not specified
@echo USAGE: INSTALL x:
@echo        (Where x: is the name of your hard drive, usually C: or D:)
:end
