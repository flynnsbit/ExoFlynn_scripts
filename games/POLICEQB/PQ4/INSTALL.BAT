@echo off
set FLAG1=0
if "%ddir%"=="" goto setupDirs

:start
cls
echo videoDrv=VESA.DRV > %ddir%\resource.pq4
echo minmemory=2M >> %ddir%\resource.pq4
echo cd=YES >> %ddir%\resource.pq4
echo cmd=PQ4CD >> %ddir%\resource.pq4
echo directory=\SIERRA\PQCOL >> %ddir%\resource.pq4
echo memoryDrv=NONE >> %ddir%\resource.pq4
echo.
echo               Police Quest IV Install
echo.
echo Please select your sound driver:
echo.
echo 1.  Roland MT-32, MT-100, LAPC-1, CM-32L, or CM-64
echo 2.  Pro Audio Spectrum
echo 3.  Sound Blaster Pro
echo 4.  Microsoft Windows Sound System
echo 5.  Sound Blaster / Adlib Substitute
echo 6.  General MIDI Sound Driver
echo 7.  IBM PC or Compatible Internal Speaker
echo 8.  No Music Card
echo.
what c "" 12345678
if "%what%"=="1" echo soundDrv=MT32.DRV >> %ddir%\resource.pq4
if "%what%"=="2" echo soundDrv=PROAUDIO.DRV >> %ddir%\resource.pq4
if "%what%"=="3" echo soundDrv=SBPRO.DRV >> %ddir%\resource.pq4
if "%what%"=="4" echo soundDrv=MICROSOF.DRV >> %ddir%\resource.pq4
if "%what%"=="5" echo soundDrv=ADL.DRV >> %ddir%\resource.pq4
if "%what%"=="6" echo soundDrv=GENMIDI.DRV >> %ddir%\resource.pq4
if "%what%"=="7" echo soundDrv=STD.DRV >> %ddir%\resource.pq4
if "%what%"=="8" echo soundDrv=MIDNONE.DRV >> %ddir%\resource.pq4
cls
echo.
echo               Police Quest IV Install
echo.
echo Please select your audio driver:
echo.
echo 1.  Pro Audio Spectrum 16
echo 2.  Pro Audio Spectrum
echo 3.  Microsoft Windows Sound System
echo 4.  Sound Blaster
echo 5.  ThunderBoard
echo 6.  None
echo.
what c "" 123456
if "%what%"=="1" echo audioDrv=DACPRO16.DRV >> %ddir%\resource.pq4
if "%what%"=="2" echo audioDrv=DACPRO.DRV >> %ddir%\resource.pq4
if "%what%"=="3" echo audioDrv=DACMSSYS.DRV >> %ddir%\resource.pq4
if "%what%"=="4" echo audioDrv=DACBLAST.DRV >> %ddir%\resource.pq4
if "%what%"=="5" echo audioDrv=DACTHUND.DRV >> %ddir%\resource.pq4
cls
echo.
echo               Police Quest IV Install
echo.
what c "Do you have a joystick? (Y/N) " YN
if "%what%"=="Y" echo joyDrv=JOYSTICK.DRV >> %ddir%\resource.pq4
echo.
what c "Do you have a Microsoft compatible mouse? (Y/N) " YN
if "%what%"=="Y" echo mouseDrv=STDMOUSE.DRV >> %ddir%\resource.pq4
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
echo cd %ddir% > %ddir%\..\pq4.bat
echo Please enter the letter of your CD-ROM Drive (example D).
what c "" abcdefghij
set cdrom=%what%
echo %what%: >> %ddir%\..\pq4.bat
echo cd \pq4 >> %ddir%\..\pq4.bat
echo.
echo sierra %ddr%resource.pq4 >> %ddir%\..\pq4.bat
echo cd \ >> %ddir%\..\pq4.bat
echo %ddr%: >> %ddir%\..\pq4.bat
echo cd .. >> %ddir%\..\pq4.bat
echo.

:end
if %FLAG1%==1 goto endMsg
echo patchDir=%sdir%\patches >> %ddir%\resource.pq4
echo audio=%sdir%\patches >> %ddir%\resource.pq4
echo resSFX=%sdir%\sfx >> %ddir%\resource.pq4
echo resAud=%sdir%\aud >> %ddir%\resource.pq4
goto endCont

:endMsg
echo patchDir=%cdrom%:\pq4\patches >> %ddir%\resource.pq4
echo audio=%cdrom%:\pq4\patches >> %ddir%\resource.pq4
echo resSFX=%cdrom%:\pq4\sfx >> %ddir%\resource.pq4
echo resAud=%cdrom%:\pq4\aud >> %ddir%\resource.pq4
set cdrom=
set ddir=
set ddr=
echo This completes the install process.  Thank you.  To run PQ4, enter
echo the directory above the install directory (i.e.  C:\SIERRA) and 
echo type PQ4.
echo.
pause

:endCont
set FLAG1=
echo.

