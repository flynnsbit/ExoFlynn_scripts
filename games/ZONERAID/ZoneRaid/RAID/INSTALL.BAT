@echo off

if not exist installe.exe goto USAGE
installe.exe

if not exist uvconfig.exe goto SKIP
if exist univbe.drv goto SKIP

echo.
REM @echo Configuring SVGA ...
uvconfig.exe -gen -l0
echo Configuring SVGA ... done!

:SKIP

echo.
echo Type RAID to play Zone Raiders.

goto END

:USAGE

echo CD to the CD-ROM drive, then type INSTALL

:END

