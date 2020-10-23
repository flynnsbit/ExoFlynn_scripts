echo off
cls
if "%1" == "" goto badstart
if "%2" == "" goto prophecy
echo Creating Prophecy Game Directories...
md %1\%2 > nul
md %1\%2\images > nul 
md %1\%2\monsters > nul
md %1\%2\maps > nul
md %1\%2\messages > nul
md %1\%2\music > nul
echo Copying Prophecy I: The Fall of Trinadon Files...
copy images %1\%2\images > nul
copy monsters %1\%2\monsters > nul
copy maps %1\%2\maps > nul
copy messages %1\%2\messages > nul
copy music %1\%2\music > nul
copy savegame.dta %1\%2 > nul
copy prophecy.exe %1\%2 > nul
goto end
:prophecy
echo Creating Prophecy Game Directories...
md %1\prophecy > nul
md %1\prophecy\images > nul
md %1\prophecy\monsters > nul
md %1\prophecy\maps > nul
md %1\prophecy\messages > nul
md %1\prophecy\music > nul
echo Copying Prophecy I: The Fall of Trinadon Files...
copy images %1\prophecy\images > nul
copy monsters %1\prophecy\monsters > nul
copy maps %1\prophecy\maps > nul
copy messages %1\prophecy\messages > nul
copy music %1\prophecy\music > nul
copy savegame.dta %1\prophecy > nul
copy prophecy.exe %1\prophecy > nul
goto end
:badstart
echo ---------------------------------------
echo Use installh to copy 
echo "Prophecy I: The Fall of Trinadon" to
echo your hard disk.  To install this game
echo onto your hard disk, type the 
echo following:
echo ÿ                                 
echo installh c:
echo ÿ                                
echo Where your hard disk is designated as
echo drive c:.  If your hard disk has a 
echo letter designation other than c:, use  
echo it instead.  For a more detailed 
echo explanation of the installh program,
echo consult your Prophecy game manual.
echo ----------------------------------------
echo ÿ	
goto quit
:end
echo Installation Complete!!!  You may now play
echo     Prophecy I: The Fall of Trinadon
echo                   by
echo            Richard L. Seaborne
:quit
echo on