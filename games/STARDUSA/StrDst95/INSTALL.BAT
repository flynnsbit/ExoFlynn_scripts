@echo off
if "%1"=="/?" goto HELP
if "%1"=="-?" goto HELP
if "%1"=="-h" goto HELP
if "%1"=="/h" goto HELP
if "%1"=="-H" goto HELP
if "%1"=="/H" goto HELP
if not "%1"=="" goto TSTWRT
:HELP
echo -----------------------------------------------------------
echo INSTALL.BAT Help
echo.
echo SYNTAX:    INSTALL  d:  [/b]
echo.
echo Where d: is the hard disk unit you're installing to.
echo You optionally specify /b if you install from B: floppy.
echo.
echo EXAMPLE:   INSTALL  C:
echo.
echo will install Stardust on the C: hard disk. This process
echo creates and/or uses the C:\STARDUST directory for
echo storing Stardust's files.
echo.
echo EXAMPLE:   INSTALL  D:  /b
echo.
echo will install Stardust on the D: hard disk from floppy
echo drive B: instead of A:.
echo -----------------------------------------------------------
goto Final

:TSTWRT
echo Gazurto‹ds Everywhere! >%1\test.$$$
if exist %1\test.$$$ goto JOB
echo -----------------------------------------------------------
echo You're trying to install Stardust on a non-writable disk,
echo probably a CD-ROM unit or low-privileged network
echo directory.
echo.
echo If you want to run Stardust directly from your CD-ROM,
echo you need to run SETUP [d:] instead of INSTALL before.
echo [d:] is the MS-DOS letter unit for the hard disk you
echo choose to install Stardust on (it will only receive
echo the configuration and save-game files).
echo.
echo If you want to copy Stardust on your hard drive, simply
echo use the following commands from the CD-ROM's Stardust
echo directory :
echo.
echo XCOPY *.* [d:]\STARDUST\ /S
echo SETUP [d:]
echo -----------------------------------------------------------
goto Final

:JOB
del %1\test.$$$ >nul
echo -----------------------------------------------------------
ECHO STARDUST-PC
ECHO INSTALL IN %1\STARDUST
echo Hit any key to confirm or Ctrl-C to abort installation
pause
set d=A:
if "%2"=="/b" set d=B:
if "%2"=="/B" set d=B:
if "%2"=="-b" set d=B:
if "%2"=="-B" set d=B:
if not exist %1\STARDUST\NUL md %1\STARDUST
copy install.bat %1\STARDUST >nul
%1
CD \STARDUST

:Disk1
if not exist %d%\frames.exe goto INSDISK1
%d%\frames
%d%\mods
goto INSDISK2

:Disk2
if not exist %d%\misc.exe goto INSDISK2
%d%\misc
%d%\datas
goto End

:INSDISK1
echo INSERT DISK 1 IN DRIVE %1 AND HIT A KEY PLEASE
pause
goto Disk1

:INSDISK2
echo INSERT DISK 2 IN DRIVE %1 AND HIT A KEY PLEASE
pause
goto Disk2

:End
set d=
cls
echo Installation complete. INSTALL will now run the
echo SETUP utility for configuring Stardust.
echo Hit any key to continue or Ctrl-C to abort.
pause
setup %1
echo You may now enter RUNME or STARDUST to play.
:Final
