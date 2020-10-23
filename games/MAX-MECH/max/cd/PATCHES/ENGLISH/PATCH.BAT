@echo off

if not exist maxrun.exe goto :no_exe
if exist maxrun.000 goto :got_old

echo Renaming old files...
ren maxrun.exe maxrun.000
ren readme.txt readmet.000
ren readme.wri readmew.000

echo Renaming new files...
ren maxrun.new maxrun.exe
ren readmet.new readme.txt
ren readmew.new readme.wri

echo Patch finished, update successful.
goto :done

:no_exe
echo ##### ERROR! Unable to find maxrun.exe.
echo ##### Press any key to view patch instructions.
pause
type patch.txt
goto :done

:got_old
echo ##### ERROR! Old version of maxrun found.
echo ##### Delete all .000 files and run patch again.

:done




