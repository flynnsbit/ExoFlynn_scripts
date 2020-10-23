rem  If this file exist then we are doing a 5.25" High Density install
if exist %1\ROSTER.DAT goto FinalCheck

rem  make sure Disk B is in source drive
:DiskB
if exist %1\GAME.EXE goto CopyB
cls
echo 
echo Insert your KNIGHTS Disk B in drive %1
pause
goto DiskB


:CopyB
rem  copy Disk B files to the destination disk.
echo Copying KNIGHTS Disk B...
copy %1\*.* %2\MPS\KNIGHTS
if not exist %2\MPS\KNIGHTS\WINWAR1.PAN goto Error

rem  If this file exist then we are doing a 3.5" 2 disk install
if exist %1\GAME.CAT goto FinalCheck

rem  make sure Disk C is in source drive
:DiskC
if exist %1\GAME.CAT goto CopyC
cls
echo 
echo Insert your KNIGHTS Disk C in drive %1
pause
goto DiskC

:CopyC
rem  copy Disk C files to the destination disk.
echo Copying KNIGHTS Disk C...
copy %1\*.* %2\MPS\KNIGHTS
if not exist %2\MPS\KNIGHTS\ROSTER.DAT goto Error

rem  make sure Disk D is in source drive
:DiskD
if exist %1\FLIGHT.EXE goto CopyD
cls
echo 
echo Insert your KNIGHTS Disk D in drive %1
pause
goto DiskD

:CopyD
rem  copy Disk D files to the destination disk.
echo Copying KNIGHTS Disk D...
copy %1\*.* %2\MPS\KNIGHTS
if not exist %2\MPS\KNIGHTS\YELLOW.PLN goto Error


:FinalCheck
rem  check for files in directory
if not exist %2\MPS\KNIGHTS\DS.EXE      goto Error
if not exist %2\MPS\KNIGHTS\WINWAR1.PAN goto Error
if not exist %2\MPS\KNIGHTS\ROSTER.DAT  goto Error
if not exist %2\MPS\KNIGHTS\YELLOW.PLN  goto Error

rem installation successful
cd %2\MPS
cls
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                                                       บ
echo บ KNIGHTS OF THE SKY is now installed on drive %2 in the \MPS\KNIGHTS   บ
echo บ directory.                                                            บ
echo บ                                                                       บ
echo บ Type "KNIGHTS" to begin the game.                                     บ
echo บ                                                                       บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
%2
goto done

:Error
cls
echo 
echo Could not find all of the KNIGHTS files in %2\MPS\KNIGHTS subdirectory.
echo Drive %2 may not have enough room for installation.
echo 
echo KNIGHTS OF THE SKY installation failed!
:done

