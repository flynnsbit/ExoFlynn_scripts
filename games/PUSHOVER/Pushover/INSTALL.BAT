echo off
if @%1 == @1 goto Stage2
cls
echo.
echo Installing Pushover to C:\PUSHOVER
pause

if not exist data\pushover.flx goto Usage
set disc=360
if exist data\cc5.flx set disc=720

md c:\pushover         >NUL
md c:\pushover\data    >NUL
md c:\pushover\music   >NUL
md c:\pushover\screens >NUL
md c:\pushover\themes  >NUL

:Disk1
copy *.*	 c:\pushover	     >NUL

c:\pushover\install 1

:Stage2			
copy data\*.*    c:\pushover\data    >NUL
copy music\*.*   c:\pushover\music   >NUL

if @%disc%==@720 goto Disk3

:Disk2
echo.
echo Please insert Pushover Disc 2
pause
if not exist data\cc5.flx goto Disk2
copy data\*.*    c:\pushover\data    >NUL

:Disk3
echo.
if @%disc%==@360 echo Please insert Pushover Disc 3
if @%disc%==@720 echo Please insert Pushover Disc 2
pause
if not exist ant.exe goto Disk3
copy *.* 	 c:\pushover	     >NUL
copy data\*.*    c:\pushover\data    >NUL
copy music\*.*   c:\pushover\music   >NUL
copy themes\*.*  c:\pushover\themes  >NUL
copy screens\*.* c:\pushover\screens >NUL

:Disk4
echo.
if @%disc%==@360 echo Please insert Pushover Disc 4
if @%disc%==@720 echo Please insert Pushover Disc 3
pause
if not exist screens\p00000.scr goto Disk4
copy music\*.*   c:\pushover\music   >NUL
copy themes\*.*  c:\pushover\themes  >NUL
copy screens\*.* c:\pushover\screens >NUL

if @%disc%==@720 goto DoDisc5
:Disk5
echo.
echo Please insert Pushover Disc 5
pause
if not exist data\ani00.dlx goto Disk5
:DoDisc5
copy data\*.*    c:\pushover\data    >NUL

:run
c:
cd \pushover
push /I

set disc=
goto end

:Usage
echo.
echo To install Pushover log onto the drive containing
echo Pushover disc 1 and type INSTALL.
echo.
echo A:
echo INSTALL
echo.
:end






