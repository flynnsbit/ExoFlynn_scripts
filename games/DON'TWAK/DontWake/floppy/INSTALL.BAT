@ECHO OFF
cls
echo                            DON'T WAKE THE SYSOP
echo          Multi-Node Aware! More Than One Player At A Time!
echo         -----------------------------------------------------
echo         -----------------------------------------------------
if "%1" == "new" goto go
if "%1" == "upgrade" goto go
if "%1" == "" goto exit

:exit
echo ***** PLEASE RUN THE INSTALLATION WITH:
echo If you are installing for the first time, please type:
echo install new
echo If you are installing an upgrade, please type:
echo install upgrade
goto end


:go
rem ***************************************

echo ***** Testing ability to set DOS attributes
echo "TESTING ABILITY TO SET DOS ATTRIBUTES" > kill.txt
attrib +R kill.txt
del kill.txt

if not exist kill.txt goto ask
if exist kill.txt goto kill3

rem ***************************************

:kill3
   attrib -R kill.txt
   del kill.txt
   echo "Great! Passed DOS attribute test."
echo         --------------------------------------------------
   goto howto


rem ***************************************
:ask
echo Installing DON'T WAKE THE SYSOP requires that all *.txt, *.exe, *.ans,
echo files be set to READ ONLY by using the dos attribute command.
echo .
echo This installation procedure normally takes care of this  
echo automatically, but it appears you do not have this DOS command.
echo You must MANUALLY set your attributes for *.txt and *.exe and *.ans
echo files to READ ONLY (+R) *AFTER* this installation completes. 
echo .
echo IF THIS IS AN UPGRADE: you must set all *.txt & *.exe files to 
echo NOT READ ONLY *BEFORE* continuing so that the new files can 
echo copy over the old files:
echo ATTRIB -R *.*
echo .
echo If this is an upgrade, when it is done, you must set the attributes
echo to NOT READ ONLY and perform the installation again so that the new
echo files can copy over the old ones.
echo If this is a new installation, please set the attributes AFTER
echo the installation:
echo ATTRIB +R *.TXT
echo ATTRIB +R *.EXE
echo ATTRIB +R *.ANS
goto howto
rem ***************************************

rem ***************************************
:howto
echo         --------------------------------------------------
if "%1" == "new" goto one
if "%1" == "upgrade" goto two


rem *************************************** FIRST TIME INSTALL
:one

ATTRIB -R *.*

if exist game.zip goto zip
if exist game.arj goto arj
if exist game.rar goto rar
echo Appears Archive has been changed from ZIP, must be manually installed.
goto end

:zip
pkunzip game.zip
del game.zip
goto one2

:arj
arj e game.arj
del game.arj
goto one2

:rar
rar e game.rar
del game.rar
goto one2

:one2
attrib +R WAKE.EXE
attrib +R *.txt
attrib +R *.ANS
goto success
rem ***************************************



rem *************************************** UPGRADE
:two
rename maint.dbf mtemp1.dbf


rem TAKE OUT FOR THIS VERSION, so will replace with 4 digit numeric field
rem PUT BACK IN THIS VERSION:

rename players.cdx mtemp2.cdx
rename players.dbf mtemp2.dbf
rename hiscore.cdx mtemp5.cdx
rename hiscore.dbf mtemp5.dbf

attrib -R *.*

if exist game.zip goto zip2
if exist game.arj goto arj2
if exist game.rar goto rar2
echo Appears Archive has been changed from ZIP, must be manually installed.
goto end


:zip2
pkunzip game.zip
del game.zip
goto one3

:arj2
arj e game.arj
del game.arj
goto one3

:rar2
rar e game.rar
del game.rar
goto one3

:one3
attrib +R WAKE.EXE
attrib +R *.txt
attrib +R *.ANS

if exist mtemp1.dbf goto maint
if not exist mtemp1.dbf goto go1

:maint
del maint.dbf
rename mtemp1.dbf maint.dbf
del mtemp1.dbf
goto go1

:go1
if exist mtemp2.dbf goto play
if not exist mtemp2.dbf goto go3

:play
del players.dbf
del players.cdx
rename mtemp2.cdx players.cdx
rename mtemp2.dbf players.dbf
del mtemp2.dbf
del mtemp2.cdx
goto go3

:go3
if exist mtemp5.dbf goto hiscore
if not exist mtemp5.dbf goto go2

:hiscore
del hiscore.dbf
del hiscore.cdx
rename mtemp5.cdx hiscore.cdx
rename mtemp5.dbf hiscore.dbf
del mtemp5.dbf
del mtemp5.cdx
goto go2

:go2
cls
goto success

rem ***************************************

:success
echo         --------------------------------------------------
echo         --------------------------------------------------
echo Read the SYSOP1 & 2 .DOC files if you have not done so.
echo A sample.bat file for calling WAKE.EXE is included.
echo The name of the file is sample.bat. Please refer to it
echo for calling DON'T WAKE THE SYSOP from your node directory.
echo         --------------------------------------------------
echo A sample configuration file is included for those who
echo REQUIRE it. If the game works fine when installing, you
echo probably do not need to use the configuration file at all
echo and do not need to even look at it.
echo         --------------------------------------------------
echo The sample.bat file tells how you must pass parameters on
echo the command line for calling DON'T WAKE THE SYSOP IE: Call the 
echo .exe, pass the drop file path and name, pass the node #, optionally
echo pass the name of the configuration file. Drop file and node
echo number must be passed even for single line BBS's.
pause
echo --------------------------------------------------------------
echo wake c:\bbs\node1\dorinfo1.def 1 sss.cfg
echo --------------------------------------------------------------
echo FOR SYSOP MODE: wake sysop
echo FOR LOCAL MODE: wake local "Your Name"
echo FOR AUTOMATIC MONTHLY OR WEEKLY RESET, put in NIGHTLY MAINTENANCE:
echo Change to wake directory, then:
echo wake maint W    -- for weekly reset
echo wake maint M    -- for monthly reset
echo FOR MORE DETAILS SEE SYSOP1.DOC
echo --------------------------------------------------------------

goto end

:end
