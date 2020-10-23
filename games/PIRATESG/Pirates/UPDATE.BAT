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
echo ô
echo ³ To install this update to Pirates! Gold, your current directory
echo ³ must be the base Pirates directory.  This is usually "\MPS\PIRATES".
echo ³ Use the DOS command "CD" to change your current directory.
echo ³ 
echo ³ From the base Pirates directory run the update by typing:
echo ³ 
echo ³ 	A:UPDATE A:	if you are updating from floppy drive "A"
echo ³ 
echo ³ 	or
echo ³ 
echo ³ 	B:UPDATE B:	if you are updating from floppy drive "B"
echo õ
goto exit

:ERR2
echo ô
echo ³ *** THE UPDATE FLOPPY DRIVE LETTER YOU ENTERED IS WRONG ***
echo ³ ***            PLEASE CORRECT AND TRY AGAIN             ***
echo õ
goto exit

:ERR3
echo ô
echo ³ *** YOU ARE NOT IN THE BASE PIRATES GOLD DIRECTORY     ***
echo ³ *** PLEASE CHANGE YOUR CURRENT DIRECTORY AND TRY AGAIN ***
echo ³ *** THE NORMAL BASE DIRECTORY IS "\MPS\PIRATES"        ***
echo õ
goto exit

:ERR4
echo ô
echo ³ *** ERROR FIXING "PCX" FILES ***
echo õ
goto exit

:exit
@echo ON
