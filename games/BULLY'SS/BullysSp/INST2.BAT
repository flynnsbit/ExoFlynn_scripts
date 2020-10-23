@echo off
@echo.
IF "%1" == "" goto :error
:nodisk
if exist bully.exe goto :disk
@echo.
@echo Wrong disk in drive, please insert Bully's disk.
@echo.
pause
goto :nodisk
:disk
@echo Copying files...
copy *.* %1\bully
@echo.
@echo Installation complete
@echo.
@echo To run Bully's Sporting Darts, type:-
@echo    C:
@echo    CD \BULLY
@echo    BULLY
@echo.
@echo with the original disk in your drive.
goto :end
:error
@echo ERROR: Destination disk not specified
@echo USAGE: INSTALL x:
@echo        (Where x: is the name of your hard drive, usually C: or D:)
:end
del %1bully\install.bat
