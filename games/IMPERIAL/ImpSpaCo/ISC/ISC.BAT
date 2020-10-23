@echo off
ECHO                 IMPERIAL SPACE COMMAND (ISC)
ECHO ÿ
ECHO SOLO PLAY, JUST YOU, AGAINST THE ROBOT CONTROLLED ALIEN EMPIRES.
ECHO ÿ
rem The next statements have where the ISC program files are located.
rem On your system, they may be in a different location, so CHANGE
rem the "set isc=..." statement to where the ISC program files really are.

set isc=c:\isc

rem these values may be changed later
set iscsolo=1
set ischist=n

rem This checks to see if the ENVIRONMENT is large enough to hold keywords
if %ischist%. == . goto end

if not exist %isc%\gamerun2.exe goto wrong

if exist me.ba goto dome
goto nome

:dome
copy me.ba me.bat >nul

:nome

if exist arrays.pc goto play
REM Check for the specification of HISTORY files:
if %2. == . goto help
if %2 == Y goto sethy
if %2 == y goto sethy
if %2 == N goto sethn
if %2 == n goto sethn
goto help

:sethy
set ischist=y
goto goth

:sethn
set ischist=n

:goth
if %1. == 1. goto specified
if %1. == 2. goto specified
if %1. == 3. goto specified
if %1. == 4. goto specified
if %1. == 5. goto specified
if %1. == 6. goto specified
if %1. == 7. goto specified
if %1. == 8. goto specified
goto help

:specified
echo set iscsolo=%1 >me.bat
COPY ME.BAT ME.BA >NUL
CALL ME.BAT
echo ÿ
echo =============================***
ECHO You are playing player number %iscsolo%
echo =============================***
echo ÿ
pause

GAMEGEN
pause
if exist orders.p%iscsolo% goto wantcopy

echo Too few players defined. Your player number is NOT in the
echo range of defined players.
echo ÿ
echo Redefine the game.
echo ÿ
DEL ME.* >NUL
DEL *.?? >NUL
goto end

:wantcopy
if %ischist% == n goto noh
echo              *** HISTORY of REPORTS *** >history.p%iscsolo%
echo              *** HISTORY of STATUS *** >histstat.p0

:noh
:askagin
echo Do you want hard copy of the gamegen options selected ("PRICELST.PC")?
echo Specify "Y" to get hard copy.
echo Specify "N" to skip the printout.
yn
if errorlevel 2 goto askagin
if errorlevel 1 goto noprint
echo Turn PRINTER ON.
pause

COPY PRICELST.PC PRN
echo  >prn

:noprint
:play
echo Wait until PRINTER activity, if any, has completed.
pause

rem One of the following PRINTER initialization commands should be
rem logically removed via "REM" in col one.

rem echo Setting printer to CONDENSED mode, 8 lines per inch.
rem This assumes your PATH statement includes the subdir where DOS utils are.
rem This MODE command assumes your printer is IBM PROPRINTER compatable.
rem   MODE LPT1:132,8,P

echo This assumes your printer is HP DeskJet 500 compatable.
rem LASER2.DAT prints in PORTRAIT mode, max char per line=166, 26x26max map
rem LASER.DAT prints in LANDSCAPE mode, max char per line=206, 32x32max map
rem type laser2.dat >prn
REM type laser.dat >prn

rem If you have some other printer, it should be set to:
rem  8 lines per inch
rem  at least 16 char per inch
rem  for bigger than the 26x26 map, you should be in LANDSCAPE MODE
rem   which is wide (printing sideways).
rem Whatever mode your printer is in, you will need to know the MAX number
rem  of characters it can print on one line.  The program, when asked to
rem  print out a map, will ask you for that number.
pause

CALL ME.BAT

:again
ORDERS %ISCSOLO%

:ask
echo Do you want to continue?
ECHO ÿ
ECHO If you QUIT, the game can be restarted any time later by just entering
ECHO the "ISC" command (this BATCH file).  To restart, no parm needed.
ECHO ÿ
echo press "Y" to CONTINUE, "N" to QUIT
yn
if errorlevel 2 goto ask
if errorlevel 1 goto quit

REM In the next command, the ROBOT will try to play ALL empires that have
REM not already received orders.

if exist orders.p8 goto dorob8
if exist orders.p7 goto dorob7
if exist orders.p6 goto dorob6
if exist orders.p5 goto dorob5
if exist orders.p4 goto dorob4
if exist orders.p3 goto dorob3
ROBOT 12
GOTO DIDROB
:DOROB3
ROBOT 123
GOTO DIDROB
:DOROB4
ROBOT 1234
GOTO DIDROB
:DOROB5
ROBOT 12345
GOTO DIDROB
:DOROB6
ROBOT 123456
GOTO DIDROB
:DOROB7
ROBOT 1234567
GOTO DIDROB
:DOROB8
ROBOT 12345678
:DIDROB
pause

GAMERUN
pause

if not exist history.p%iscsolo% goto nohist

orders %ISCSOLO%+
@echo on
copy history.p%iscsolo%+repprt.p%iscsolo% history.p%iscsolo%
if not exist status.p0 goto nohist

copy histstat.p0+status.p0 histstat.p0

:nohist
@echo off
goto again

:quit
ECHO ÿ
ECHO To restart the game later, just enter "ISC".  When continuing the game,
ECHO the specification of parameters on the ISC command is not necessary.
ECHO ÿ
echo When you are completely finished with the files associated with this
echo game, and you wish to generate a new one, remove the old files by:
echo         DEL *.??
ECHO ÿ
goto end

:help
echo The first parm is YOUR PLAYER NUMBER.
echo The larger this number, the LESS DESIRABLE is your map position.
echo To start, suggest playing as PLAYER 1, the most desirable position.
echo You may select any player number, 1-8.
echo ÿ
echo The second parm is the HISTORY FILES option:  either "Y" or "N".
echo This specifies whether you wish HISTORY files to be kept in a HIST subdir.
echo Specifying "Y" will generate rather large files, and should be selected
echo only when running on a hard drive with sufficient room.  If a diskette
echo is being used, the "N" should be specified.
ECHO ÿ
echo Sample command, assuming you want to be PLAYER ONE, and NO HISTORY files:
echo    ISC 1 N
ECHO ÿ
echo These parms are specified ONLY when generating a new game.  To continue
echo a game, just specify: "ISC" (with no parms).
pause

:end
rem Clean up the ENVIRONMENT of keywords no longer needed
SET ISCSOLO=
set isc=
set ischist=

if exist me.bat goto killme
goto x
:killme
DEL ME.BAT >NUL
:x
ECHO ÿ
goto fini

:wrong
ECHO ÿ
echo Attempt was made to access the ISC files, but are not in the indicated
echo subdirectory. Make changes to this BAT file to point to the proper subdir.

:fini
ECHO Don't forget to RESET your printer to get rid of the ISC print mode.
ECHO The "INIT" command will do that, resetting the printer to its normal
ECHO  "power on" mode.
ECHO ÿ
ECHO Thank You for participating in ISC!!!
ECHO ÿ
ECHO * * * * * * * * * * * * * * * * * * * * * * * * *
ECHO ÿ
:THEND
