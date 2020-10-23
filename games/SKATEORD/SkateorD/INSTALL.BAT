echo off
if .%2 == .x123 goto install1
if .%2 == .3abc goto install2
if not .%2 == . goto instructs
if .%1 == . goto instructs
copy install.bat %1\junk88.bat
if exist %1\junk88.bat goto ok
goto instructs
:ok
cls
%1\junk88 %1 x123
goto done
:instructs
ECHO ************* Usage - INSTALL [Drivenumber:] [ENTER]
ECHO ************* eg. INSTALL C:
goto done



:install1
echo Making a subdirectory Skate on drive %1!
md %1\Skate
md %1\Skate\sk1
md %1\Skate\skc1
md %1\Skate\sk2
md %1\Skate\skc2
:disk1
if exist Skate.exe goto copy1
echo Please make sure disk 1 is in default drive!
goto disk1

:copy1
copy *.* %1\Skate
if errorlevel goto insterror
copy sk1\*.* %1\Skate\sk1\*.*
if errorlevel goto insterror
copy skc1\*.* %1\Skate\skc1\*.*
if errorlevel goto insterror
if exist sk2\almobs22.msh goto copy2
:disk2
echo Now put disk 2 in default drive!
pause
if exist sk2\almobs22.msh goto copy2
echo Please put the disk 2 in!!!!!
goto disk2
:copy2

copy sk2\*.* %1\Skate\sk2\*.*
if errorlevel goto insterror
copy skc2\*.* %1\Skate\skc2\*.*
if errorlevel goto insterror
goto end1

:insterror
echo WARNING!
echo ERROR HAS OCCURRED DURING INSTALL!!!!!
echo Please make sure there is plenty of room on disk %1!
goto end2

:end1
echo To play make sure you are on disk %1
echo Then type 'CD \SKATE'.
echo Next type 'SKATE'.
%1\skate\install %1 3abc
:end2
goto done



:install2
del %1\junk88.bat
:done
