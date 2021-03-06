@echo OFF
if not exist %1pirpatch.zip  goto ERR1
if not exist piratesg.exe  goto ERR1

%1pkunzjr -o -d %1pirpatch
%1pcx1616 %1barmaid.fix  pcx\barmaid.pcx
if errorlevel 1  goto ERR4
%1pcx1616 %1merchant.fix pcx\merchant.pcx
if errorlevel 1  goto ERR4
echo *** Pirates Gold! successfully patched ***
goto exit

:ERR1
echo �
echo � To install this update to Pirates! Gold, your current directory
echo � must be the base Pirates directory.  This is usually "\MPS\PIRATES".
echo � Use the DOS command "CD" to change your current directory.
echo � 
echo � From the base Pirates directory run the update by typing:
echo � 
echo � 	A:UPDATE A:	if you are updating from floppy drive "A"
echo � 
echo � 	or
echo � 
echo � 	B:UPDATE B:	if you are updating from floppy drive "B"
echo �
goto exit

:ERR2
echo �
echo � *** THE UPDATE FLOPPY DRIVE LETTER YOU ENTERED IS WRONG ***
echo � ***            PLEASE CORRECT AND TRY AGAIN             ***
echo �
goto exit

:ERR3
echo �
echo � *** YOU ARE NOT IN THE BASE PIRATES GOLD DIRECTORY     ***
echo � *** PLEASE CHANGE YOUR CURRENT DIRECTORY AND TRY AGAIN ***
echo � *** THE NORMAL BASE DIRECTORY IS "\MPS\PIRATES"        ***
echo �
goto exit

:ERR4
echo �
echo � *** ERROR FIXING "PCX" FILES ***
echo �
goto exit

:exit
@echo ON
