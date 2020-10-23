@ECHO OFF
ECHO OFF
rem ECHO OFF
rem This Batch file needs to be run with the following files
rem unpacked in the same directory where PD Ver 1 was installed..
rem All these files are zipped into the file UPPD.ZIP
rem CHAIN.EXE
rem DUSE.COM
rem PDEMI.VOL
rem PDSFX.VOL
rem PDGPH.VOL
rem INSTALL.EXE
rem INSTALLE.TXC
rem MEMERRE.TXT
rem README.TXT
rem PD.EXE
rem PD.BAT
rem PD2.ICO
rem CHECKEMM.EXE
rem README.BAT
rem *.CHN
ECHO\
ECHO  ==== UPDATE Program for POWER DOLLS Ver 1.0 to Ver 1.2 ====
ECHO\
IF "%1"=="" GOTO SYNTAX
SET PDCD=%1
IF NOT "%PDCD%"=="%1" GOTO ENVERR
IF NOT EXIST %PDCD%\VOC\ELIOLA.VOC GOTO :SYNTAX
IF NOT EXIST GAMEMAIN.EXE GOTO :BAD_DIR
IF NOT EXIST CHAIN.EXE GOTO ERR_CHAIN
IF NOT EXIST DUSE.COM GOTO ERR_DUSE
DUSE -Q -M .
IF NOT ERRORLEVEL 25 GOTO DISKAREA
ECHO\
ECHO *** Start Updating POWER DOLLS to Ver 1.2 ***
ECHO\
ECHO ***    Takes a few minutes to complete    ***
ECHO\
IF NOT EXIST PDASK.CHN GOTO CHNERR
CHAIN -T0 PDASK
IF ERRORLEVEL 1 GOTO VOLERR
IF NOT EXIST PDVOC.CHN GOTO CHNERR
CHAIN -T0 PDVOC
IF ERRORLEVEL 1 GOTO VOCERR
IF NOT EXIST PDBDT.CHN GOTO CHNERR
CHAIN -T0 PDBDT
IF ERRORLEVEL 1 GOTO VOLERR
IF NOT EXIST PDGCP.CHN GOTO CHNERR
CHAIN -T0 PDGCP
IF ERRORLEVEL 1 GOTO VOLERR
IF NOT EXIST PDMDT.CHN GOTO CHNERR
CHAIN -T0 PDMDT
IF ERRORLEVEL 1 GOTO VOLERR
IF NOT EXIST PDMPD.CHN GOTO CHNERR
CHAIN -T0 PDMPD
IF ERRORLEVEL 1 GOTO VOLERR
IF NOT EXIST PDSLD.CHN GOTO CHNERR
CHAIN -T0 PDSLD
IF ERRORLEVEL 1 GOTO VOLERR
IF NOT EXIST PDMID.CHN GOTO CHNERR
CHAIN -T0 PDMID
IF ERRORLEVEL 1 GOTO VOLERR
IF NOT EXIST PDBMP.CHN GOTO CHNERR
CHAIN -T0 PDBMP.CHN
MD BMP >NUL
MD SAVE >NUL
IF EXIST RECORD*.BIN REN RECORD*.BIN RECORD*.SAV
IF EXIST RECORD*.SAV MOVE RECORD*.SAV SAVE
IF EXIST KEMURI*.DAT REN KEMURI*.DAT FOGDAT*.SAV
IF EXIST FOGDAT*.SAV MOVE FOGDAT*.SAV SAVE
DEL GAMEMAIN.EXE
DEL ENVCHK.EXE
DEL *.ID
DEL *.IBM
DEL *.MS
DEL GO.BAT
DEL MIDI*.CFG
DEL INITDATA.BIN
DEL FACEALL.RGB
DEL *.ASK
DEL *.SLD
DEL *.MPD
DEL *.MDT
DEL *.KPC
DEL *.BDT
DEL *.DAT
DEL *.GCP
DEL *.MID
DEL README.DOC
DEL CHAIN.EXE
DEL DUSE.COM
DEL *.CHN
SET PDCD=

ECHO
ECHO\
ECHO  ================  UPDATE SUCESSFUL!! ==============
ECHO\
ECHO  Please type  PD  to run your updated Power Dolls.
ECHO\
ECHO\
ECHO  If Power Dolls does not work, you must re-install Ver 1.0 from CDROM,
ECHO  then unpack PDUP12.EXE and run PDUPDATE.BAT again.
ECHO\
PAUSE
README.BAT

:VOCERR
ECHO  ***************   ERROR!!!   **************
ECHO\
ECHO
ECHO  Error in creating VOL files in your PD directory.
ECHO  Please make sure you have the correct CD-ROM of Power Dolls Ver 1.0
ECHO  in the CDROM drive you instructed at the command line of this batch file.
GOTO END

:VOLERR
ECHO  ***************   ERROR!!!   **************
ECHO\
ECHO
ECHO  Error in creating VOL files in your PD directory.
ECHO  Maybe due to missing files in your PD directory.
ECHO  Please re-install Power Dolls Ver 1.0 from your CDROM
ECHO  and run this batch file again.
GOTO END

:CHNERR
ECHO  ***************   ERROR!!!   **************
ECHO\
ECHO
ECHO  *.CHN files missing in your PD directory.
ECHO  Please make sure you have unzipped PDUP12.EXE in PD directory and
ECHO  No Error was reported when it was done.
ECHO  If Error was reported, it maybe due to shortage of disk space.
ECHO  Make sure you have 25Mbytes of free space in the drive you
ECHO  installed Power Dolls Ver 1.0
ECHO  Then run this batch file again.
GOTO END

:ENVERR
ECHO  ***************   ERROR!!!   **************
ECHO\
ECHO
ECHO  ---  Out of Environment Variable Space!!  ---
ECHO  Please find a SHELL command in your CONFIG.SYS
ECHO  and change the /E:xxxx parameter to a larger value.
ECHO  Then run this batch file again.
ECHO  If there is not a /E:xxxx in your SHELL command line,
ECHO  Add it behind.
ECHO  Example1:
ECHO     If old shell line was  SHELL=C:\COMMAND.COM /P
ECHO     Change to:
ECHO              SHELL=C:\COMMAND.COM /P /E:1024
ECHO\
ECHO  Example2:
ECHO     If old shell line was  SHELL=C:\COMMAND.COM /P /E:1280
ECHO     Change to: (Add about 200 to the present value)
ECHO              SHELL=C:\COMMAND.COM /P /E:1480
ECHO\
GOTO END

:DISKAREA
ECHO  ***************   ERROR!!!   **************
ECHO\
ECHO
ECHO  Not enough free space in your Hard disk drive.
ECHO  To update POWER DOLLS to Ver 1.2, you need at least
ECHO  25 MBytes of free space in your hard disk drive.
ECHO  Please reserve disk space and run this batch file again.
GOTO END

:BAD_DIR
ECHO  ***************   ERROR!!!   **************
ECHO\
ECHO
ECHO  Please run this Batch file at the directory where you
ECHO  installed POWER DOLLS Ver 1.0. (Default is "C:\GAMES\PD")
ECHO\
GOTO END

:SYNTAX
ECHO\
ECHO  Please set your POWER DOLLS CDROM in your CDROM Drive and type
ECHO\
ECHO         PDUPDATE X:
ECHO\
ECHO         to start update.
ECHO\
ECHO  X: is the Drive Name of your CDROM Drive.
ECHO\
ECHO  Example:
ECHO\
ECHO          PDUPDATE D:
ECHO\
GOTO END

:ERR_CHAIN
ECHO  ***************   ERROR!!!   **************
ECHO\
ECHO
ECHO ERROR === CHAIN.EXE not found in current directory!! ===
ECHO\
GOTO END

:ERR_DUSE
ECHO  ***************   ERROR!!!   **************
ECHO\
ECHO
ECHO ERROR === DUSE.EXE not found in current directory!! ===
ECHO\
GOTO END

:END
