rem	----	Copy the files from disk 1. 
copy *.* %1\sierra\gr
del %1\sierra\gr\installh.bat
copy %1\sierra\gr\_gr.bat %1\sierra\gr.bat
del %1\sierra\gr\_gr.bat
ren %1\sierra\gr\sierra.com gr.com

:GetVol2 
echo Please put disk 2 of Gold Rush in the drive. 
pause 
%1\sierra\gr\resetdsk
if not exist grvol.2 goto :GetVol2 

copy *.* %1

del %1\sierra\gr\resetdsk.com

rem	----	Everything has been copied -- tell the user how 
rem	----	to start the game. 
echo ÿ 
echo ÿ 
%1 
cd \sierra 
echo To play Gold Rush, type 
echo 	cd \sierra 
echo Then type 
echo 	gr
