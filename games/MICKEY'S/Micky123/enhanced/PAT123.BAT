@ECHO OFF
CLS
ECHO.
ECHO Welcome to the Disney Software Sound Blaster Update Patch Installation.
ECHO.
ECHO This batch file that you are now running will do three things:
ECHO.
ECHO 1.  Delete old files that are no longer necessary.
ECHO.
ECHO 2.  Install the new updated files to improve the sound quality
ECHO     on your Blaster or 100% compatible sound card.
ECHO.
ECHO 3.  Place a Windows 3.1 Launcher Icon in your program directory.
ECHO     Setup instructions for this Icon can be found in the file
ECHO     README.TXT in this directory.  You can use any text editor to
ECHO     view that file for more instructions.
ECHO.
ECHO Now we will begin the installation for the Mickey's 123's sound patch.
ECHO.
PAUSE
CLS
ECHO.
ECHO First we will make sure that you are in the proper directory.
ECHO.
IF EXIST MSPPVGA.EXE GOTO :GOODEND
IF NOT EXIST MSPPVGA.EXE GOTO :BADEND
GOTO END

:BADEND
ECHO.
ECHO  ERROR -- MSPPVGA.EXE was not found in the current directory.  You 
ECHO           are not in the sub-directory where Mickey's 123's is 
ECHO           installed.  Please make sure that you move the files 
ECHO           PAT123.BAT and PB-123.EXE to the directory where Mickey's 
ECHO           123's is installed, and then try running PAT123 again to 
ECHO           successfully install the Sound Blaster Patch.
ECHO.
PAUSE
GOTO END

:GOODEND
ECHO.
ECHO OK -- MSPPVGA.EXE file was found in the current directory, now we
ECHO       will look an see if you have the proper update file.
ECHO.
IF EXIST PB-123.EXE GOTO :SETUP
IF NOT EXIST PB-123.EXE GOTO :NOFILE
GOTO SETUP

:NOFILE
ECHO. 
ECHO ERROR -- The file PB-123.EXE is not available. Please make sure 
ECHO          the files PAT123.BAT and PB-123.EXE are in the same
ECHO          directory where Mickey's 123's is installed, and then
ECHO          attempt to run PAT123 again.
ECHO.
GOTO END

:SETUP
ECHO OK -- All of the correct files are here, and we will now begin 
ECHO       installing the Sound Blaster patch.
ECHO.
PAUSE
ECHO.
DEL MICKEY.BAT
DEL GAME.CFG
DEL INSTALL.CFG
DEL INSTALL.EXE
DEL MSPCGA.EXE
DEL MSPTDY.EXE
DEL MSPEGA.EXE
DEL MSPPVGA.EXE
DEL SETUP.EXE
DEL *.PNV
PB-123 

ECHO.
ECHO Now we will run the SETUP program to reselect your options for 
ECHO Mickey's 123's.  Please make the proper selections for your
ECHO system and when you are finished, the new patch will be installed,
ECHO and the program should work properly.
ECHO.
SETUP

:END
REM CLS
