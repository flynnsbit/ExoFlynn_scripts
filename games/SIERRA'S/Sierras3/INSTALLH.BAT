echo off
echo ÿ 
echo ÿ 
rem	----	Make sure that we've got a parameter and that we're on the 
rem	----	proper drive. 
if "%1" == "" goto Usage 
if not exist installh.bat goto Usage 
rem	----	Wait for a keystroke before starting. 
echo off 
echo Hard disk installation for 
echo Helicopter
pause 
rem	----	Create or change to the appropriate directory on the hard disk. 
makepath %1\sierra 
if errorlevel 1 goto CantMake 
makepath %1heli
if errorlevel 1 goto CantMake 
rem	----	create batch file & copy the files from disk 1 
echo cd \sierra\heli >%1\sierra\heli.bat
echo heli %%1 %%2 %%3 %%4 %%5 >>%1\sierra\heli.bat
copy heli.com %1
copy main. %1 
copy *.3-d %1
copy *.mdl %1
copy *.sys %1
rem	----	Everything has been copied -- tell the user how 
rem	----	to start the game. 
echo ÿ 
echo ÿ 
%1 
cd \sierra 
echo To fly Helicopter, type 
echo 	cd \sierra 
echo Then type 
echo 	heli
goto Exit 
rem	----	Tell user that we couldn't create the proper directory 
rem	----	and bail out. 
:CantMake 
echo off 
echo ÿ 
echo ÿ 
echo Unable to create the directory 
echo 	%1\sierra\heli
echo Installation cancelled. 
goto Exit 
rem	----	No parameter or not on the proper drive -- tell user how 
rem	----	to use installation program. 
:Usage 
echo off 
echo To install Helicopter on 
echo hard disk C:, make the drive 
echo containing the Helicopter 
echo disk your current drive, then type 
echo		installh  C: 
echo	If your hard disk has a drive letter 
echo other than C:, use its letter instead. 
:Exit 

