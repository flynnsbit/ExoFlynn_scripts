ECHO OFF
CLS
CKCURDRV
IF ERRORLEVEL 0 SET ONDRIVE=A:
IF ERRORLEVEL 1 SET ONDRIVE=B:
IF ERRORLEVEL 2 SET ONDRIVE=C:
IF ERRORLEVEL 3 SET ONDRIVE=D:

ECHO 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
ECHO 쿞TONE & ASSOCIATES Program Installation�
ECHO 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
ECHO �
ECHO Enter graphics adapter information:
ECHO �
ECHO	1.	CGA, Monochrome
ECHO	2.	EGA/VGA
ECHO �
option 1120-Which graphics Card(1 or 2) : 

if errorlevel 1 goto CGA

ECHO BJACK>CBJ.BAT
ECHO �
ECHO Championship Blackjack is now configured for EGA/VGA use.
ECHO �
GOTO CONT

:CGA
ECHO BJACKC>CBJ.BAT
ECHO �
ECHO Championship Blackjack is now configured for monochrome/CGA use.
ECHO �

:CONT

ECHO Adapter information has been recorded.
ECHO �
ECHO INSTALL will now copy Championship Blackjack to
ECHO your hard drive if you wish.
:CONT3
ECHO �
OPTION Q4q4F3f3E2e2D1d1C0c0-Enter the destination drive letter(Q to quit) : 
ECHO �
IF ERRORLEVEL 4 GOTO QUIT

IF ERRORLEVEL 0 SET TODRIVE=C:
IF ERRORLEVEL 1 SET TODRIVE=D:
IF ERRORLEVEL 2 SET TODRIVE=E:
IF ERRORLEVEL 3 SET TODRIVE=F:

MD %TODRIVE%\CBJ>NUL
COPY %ONDRIVE%*.* %TODRIVE%\CBJ>NUL
ECHO �
IF EXIST %TODRIVE%\CBJ\CBJ.BAT GOTO CONT2
ECHO INSTALL cannot copy the files to that drive.
echo Please choose another.
GOTO CONT3
:CONT2
ECHO �
ECHO Championship Blackjack is now installed in %TODRIVE%\CBJ.
ECHO �
ECHO To start, Type:
ECHO �
ECHO 	%TODRIVE%
ECHO 	CD\CBJ
ECHO 	CBJ
ECHO �

:QUIT
