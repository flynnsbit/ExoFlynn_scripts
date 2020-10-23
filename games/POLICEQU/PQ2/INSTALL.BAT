@echo off
set FLAG1=0
if "%ddir%"=="" goto setupDirs

:start
cls
echo videoDrv=EGA320.DRV > %ddir%\resource.pq2
echo kbdDrv=IBMKBD.DRV >> %ddir%\resource.pq2
echo.
echo               Police Quest II Install
echo.
echo Please select your sound driver:
echo.
echo 1. Sound Blaster/Adlib
echo 2. Creative Music System/Game Blaster
echo 3. Yamaha FB-01 FM sound generator
echo 4. IBM PC Music Feature Card
echo 5. Tandy 1000 series of PCjr
echo 6. Roland MT-32, MT-100, or LAPC-1 sound module
echo 7. IBM PC or compatible internal speaker
echo.
what c "" 1234567
if "%what%"=="1" echo soundDrv=ADL.DRV >> %ddir%\resource.pq2
if "%what%"=="2" echo soundDrv=CMS.DRV >> %ddir%\resource.pq2
if "%what%"=="3" echo soundDrv=FB01.DRV >> %ddir%\resource.pq2
if "%what%"=="4" echo soundDrv=IMF.DRV >> %ddir%\resource.pq2
if "%what%"=="5" echo soundDrv=JR.DRV >> %ddir%\resource.pq2
if "%what%"=="6" echo soundDrv=MT32.DRV >> %ddir%\resource.pq2
if "%what%"=="7" echo soundDrv=STD.DRV >> %ddir%\resource.pq2
cls
echo.
echo               Police Quest II Install
echo.
what c "Do you have a joystick? (Y/N) " YN
if "%what%"=="Y" echo joyDrv=JOYSTICK.DRV >> %ddir%\resource.pq2
echo.
what c "Do you have a Microsoft compatible mouse? (Y/N) " YN
if "%what%"=="Y" echo mouseDrv=YES >> %ddir%\resource.pq2
echo.
if %FLAG1%==1 goto createBatch
goto end

:setupDirs
set FLAG1=1
echo.

cls
echo.
echo Type in the directory to install to, or press enter for default
echo.
echo C:\SIERRA\PQCOL
echo.
what s "Please enter install directory: " 
pushdir
if "%what%"=="" set what=c:\sierra\pqcol
set ddir=%what%
echo.
echo Please enter the letter of your INSTALL drive (example C).
what c "" abcdefghij
set ddr=%what%:
copy popdir.com %ddr%\
godir %ddir%
%ddr%\popdir
goto start


:createBatch
echo cd %ddir% > %ddir%\..\pq2.bat
echo Please enter the letter of your CD-ROM Drive (example D).
what c "" abcdefghij
echo %what%: >> %ddir%\..\pq2.bat
echo cd \pq2 >> %ddir%\..\pq2.bat
echo.
echo sierra %ddr%resource.pq2 >> %ddir%\..\pq2.bat
echo cd \ >> %ddir%\..\pq2.bat
echo %ddr% >> %ddir%\..\pq2.bat
echo cd .. >> %ddir%\..\pq2.bat
echo.

:end
if %FLAG1%==1 goto endMsg
goto endCont

:endMsg
set ddir=
set ddr=
echo This completes the install process.  Thank you.  To run PQ2, enter
echo the directory above the install directory (i.e.  C:\SIERRA) and 
echo type PQ2.
echo.
pause

:endCont
set FLAG1=
echo.
