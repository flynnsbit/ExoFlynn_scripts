@echo off
@echo.
@echo MUNSTERS installation program
@echo.
IF "%1" == "" goto :error
md %1\Munsters
copy *.set %1\Munsters
copy *.exe %1\Munsters
%1
cd \munsters
echo.
echo To run The Munsters type:-
echo X:
echo CD \MUNSTERS
echo MST
echo.
echo With the original disk in drive A or B
echo (X: is the hard drive name) 
echo.
goto :end
:error
@echo ERROR: Destination disk not specified
@echo USAGE: INSTALL X:
@echo        (X: is the name of your hard drive, usually C: or D:)
:end
