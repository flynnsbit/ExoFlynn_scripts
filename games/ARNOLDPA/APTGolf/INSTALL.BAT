echo off
rem /*------------------------------------------------------------------------
rem		     Floppy to Hard disk install
rem ------------------------------------------------------------------------*/

if "%1"=="DD" goto installthree
if "%1"=="D" goto installfive

cls
echo /*-----------------------------------------------------------------------------
echo		             Tournament Golf hard disk install
echo -----------------------------------------------------------------------------*/

if "%1"=="" goto where
if "%2"=="R" goto remove
if "%2"=="r" goto remove

rem /*------------------------------------------------------------------------
rem	      Install programme and data from first disk
rem ------------------------------------------------------------------------*/

if exist %1\golf\golf.exe goto allready

echo Creating Directory %1\golf
mkdir >NUL %1\golf
mkdir >NUL %1\golf\data
mkdir >NUL %1\golf\us
mkdir >NUL %1\golf\gb
mkdir >NUL %1\golf\jp

echo Installing Program
copy >NUL install.bat %1\golf
copy >NUL golf.exe %1\golf
echo Installing Data
copy >NUL data\*.* %1\golf\data

if exist %1\golf\data\disc.dat goto foundthree
if not exist %1\golf\data\disc.dat goto foundfive

goto end

rem /*------------------------------------------------------------------------
rem		  Install course data from 5¬ Drive
rem ------------------------------------------------------------------------*/

:foundfive
%1\golf\install.bat D %1

:installfive
echo Installing Golf Courses from 5¬ Drive
:waitus
if exist us\us.inf goto gotus
echo Please insert US Course Disk
pause
goto waitus
:gotus

echo Installing US Course
copy >NUL us\*.* %2\golf\us

:waitgb
if exist gb\gb.inf goto gotgb
echo Please insert GB Course Disk
pause
goto waitgb
:gotgb

echo Installing GB Course
copy >NUL gb\*.* %2\golf\gb

:waitjp
if exist jp\jp.inf goto gotjp
echo Please insert JP Course Disk
pause
goto waitjp
:gotjp

echo Installing JP Course
copy >NUL jp\*.* %2\golf\jp

goto torun

rem /*------------------------------------------------------------------------
rem		  Install course data from 3« Drive
rem ------------------------------------------------------------------------*/

:foundthree
%1\golf\install.bat DD %1
goto end

:installthree
echo Installing Golf Courses from 3« Drive

:waitcourse
if exist us\us.inf goto gotcourse
cls
echo Please insert Course Disk
pause
goto waitcourse
:gotcourse

echo Installing US Course
copy >NUL us\*.* %2\golf\us
echo Installing GB Course
copy >NUL gb\*.* %2\golf\gb
echo Installing JP Course
copy >NUL jp\*.* %2\golf\jp

goto torun

rem /*------------------------------------------------------------------------
rem		    Show how to play instructions
rem ------------------------------------------------------------------------*/

:torun
cls
echo /*-----------------------------------------------------------------------------
echo		             Tournament Golf now installed
echo -----------------------------------------------------------------------------*/
%2
cd \golf
echo use :-
echo CD %2\GOLF
echo GOLF
echo to play TOURNAMENT GOLF
goto end

rem /*------------------------------------------------------------------------
rem   Remove Tournament Golf from the Hard disc (a very usefull feature)
rem ------------------------------------------------------------------------*/
	
:remove
echo removing Golf
cd %1\
del %1\golf\data\*.*
rmdir >NUL %1\golf\data
del %1\golf\us\*.*
rmdir >NUL %1\golf\us
del %1\golf\gb\*.*
rmdir >NUL %1\golf\gb
del %1\golf\jp\*.*
rmdir >NUL %1\golf\jp
del %1\golf\*.*
rmdir >NUL %1\golf
goto end

rem /*------------------------------------------------------------------------
rem		     Can't install already found
rem ------------------------------------------------------------------------*/

:allready
echo Install has found %1\golf
echo to remove this use :-
echo INSTALL %1 r
goto end

rem /*------------------------------------------------------------------------
rem			  How to use Install
rem ------------------------------------------------------------------------*/

:where
echo usage :- Install drive
echo e.g.     INSTALL C:

rem /*------------------------------------------------------------------------
rem			  The End (At last)
rem ------------------------------------------------------------------------*/

:end

