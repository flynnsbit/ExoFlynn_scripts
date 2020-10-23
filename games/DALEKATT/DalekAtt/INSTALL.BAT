@echo off
@echo.
@echo *********************************
@echo Dalek Attack installation program
@echo *********************************
@echo.
IF "%1" == "" goto :error
cd %1\
md %1drwho
copy inst2.bat %1drwho
%1drwho\inst2.bat %1
goto :end
:error
@echo ERROR: Destination disk not specified
@echo USAGE: INSTALL x:
@echo        (Where x: is the name of your hard drive, usually C: or D:)
:end
