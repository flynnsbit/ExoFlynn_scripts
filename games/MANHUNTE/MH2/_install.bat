rem	----	Copy the files from disk 1. 
copy *.* %drive%\sierra\mh2
del %drive%\sierra\mh2\installh.bat
copy %drive%\sierra\mh2\_mh2.bat %drive%\sierra\mh2.bat
del %drive%\sierra\mh2\_mh2.bat
ren %drive%\sierra\mh2\sierra.com mh2.com

:GetVol2 
echo Please put disk 2 of Manhunter San Fransisco in the drive. 
pause 
%drive%\sierra\mh2\resetdsk
if not exist mh2vol.2 goto :GetVol2 

:Vol2Here 
copy *.* %drive%

:GetVol3 
echo Please put disk 3 of Manhunter San Fransisco in the drive. 
pause 
%drive%\sierra\mh2\resetdsk
if not exist mh2vol.3 goto :GetVol3 

:Vol3Here 
copy *.* %drive%

:Done_Install
rem	----	Everything has been copied -- tell the user how 
rem	----	to start the game. 
echo ÿ 
echo ÿ 
%1 
cd \sierra 
echo To play Manhunter San Fransisco, type 
echo 	cd \sierra 
echo Then type 
echo 	mh2

set drive=
