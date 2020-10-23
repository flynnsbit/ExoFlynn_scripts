@echo off
@echo.
@echo Bully's Sporting Darts installation program
@echo.
IF "%1" == "" goto :error
cd %1\
md %1bully
copy inst2.bat %1bully
%1bully\inst2.bat %1
goto :end
:error
@echo ERROR: Destination disk not specified
@echo USAGE: INSTALL x:
@echo        (Where x: is the name of your hard drive, usually C: or D:)
:end
