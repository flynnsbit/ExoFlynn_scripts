@echo off
echo             Snapshot of Dezerian Adventure
echo Usage: SNAP d  where d is number (single digit) of save set.
if "%1"=="" goto noarg
if exist song1.dez goto cont1
echo Error: Must be run on hard disk in directory where Dezeria is located.
goto end
:cont1
copy save.dat save.sv%1
copy mz.dat mz.sv%1
copy objchain.dat objchain.sv%1
copy sites.dat sites.sv%1
copy quad.dat quad.sv%1
copy mazes.dat mazes.sv%1
echo Save Set %1 Created... Use RESTORE to make it the current setup.
goto end
:noarg
echo Error: Must number the save set with a single digit.
:end

