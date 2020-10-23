@echo off
echo             Restore of Dezerian Adventure
echo Usage: RESTORE d  where d is number (single digit) of save set.
if "%1"=="" goto noarg
if exist song1.dez goto cont1
echo Error: Must be run on hard disk in directory where Dezeria is located.
goto end
:cont1
if exist mz.sv%1 goto cont2
echo Error: Save Set %1 does not exist.
goto end
:cont2
copy save.sv%1 save.dat
copy mz.sv%1 mz.dat
copy objchain.sv%1 objchain.dat
copy sites.sv%1 sites.dat
copy quad.sv%1 quad.dat
copy mazes.sv%1 mazes.dat
echo Save Set %1 Restored
goto end
:noarg
echo Error: Must identify the save set to be restored with a single digit.
:end

