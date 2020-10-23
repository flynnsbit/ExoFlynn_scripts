@ECHO OFF
playlogo imlogo.ani I
:START
menue
if ERRORLEVEL 4 goto ENDE
if ERRORLEVEL 3 goto INTRO
if ERRORLEVEL 2 goto SHIPS
if ERRORLEVEL 1 goto EXPLORATION
if ERRORLEVEL 0 goto ENDE
goto START
:SHIPS
schiffe
if ERRORLEVEL 1 goto ENDE
goto START
:EXPLORATION
exp /F
if ERRORLEVEL 1 goto ENDE
goto start
:INTRO
intro /F
if ERRORLEVEL 1 goto ENDE
goto start
:ENDE

	echo **************************************************************  
	echo **  For a preview of coming attractions:                    **
	echo **                                                          **
	echo **  Change your directory to the \MKTSCRN directory         **
	echo **  on the EXPLORATION CD ROM and type COMING.              **
	echo **                                                          **
	echo **  Try out a demo of our new games CAPITALISM and APACHE.  **
	echo **                                                          **         
	echo **  CAPITALISM is on the CD ROM in the \CAPDEMO directory.  **
	echo **  Change your directory to the \CAPDEMO directory on the  **
	echo **  EXPLORATION CD ROM and install it to your hard drive by **
	echo **  typing INSTALL.                                         **
	echo **                                                          ** 
	echo **  APACHE is on the CD ROM in the \APCHDEMO directory,     **
	echo **  Change your directory to the \APCHDEMO directory on     **
	echo **  the EXPLORATION CD ROM and install it to your hard      **
	echo **  drive by typing INSTALL.                                **
	echo **************************************************************  
 

