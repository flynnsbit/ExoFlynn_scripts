@ECHO OFF

REM
REM Use this batch file to rebuild a brand new BC3LIB4.RES if you have
REM modified any of the parameters in OBJECTS.SCR, STATICS.SCR or
REM OBJCLASS.SCR. This file will replace the default version in the BC3K
REM folder. Make backups!
REM
REM The BC3LIB4.IDX file shows which files are actually stored in this
REM BC3LIB4.RES file. Add any additional script files (.MIS, .DAT) to it
REM or put them, and the .DES files in the SCRIPTS folder.
REM

ECHO :: PREPARING BASE 3D OBJECTS ::

PREPARE planet.3d
if errorlevel 1 goto fail

PREPARE moon.3d
if errorlevel 1 goto fail

PREPARE null.3d
if errorlevel 1 goto fail

PREPARE fld.3d
if errorlevel 1 goto fail

ECHO :: PREPARING OBJECTS USING OBJECTS.SCR ::

prepare objects
if errorlevel 1 goto fail

ECHO :: PREPARING REGIONS USING STATICS.SCR ::

prepare regions
if errorlevel 1 goto fail

prepare classes
if errorlevel 1 goto fail

prepare navdata
if errorlevel 1 goto fail

ECHO :: SAVING DEFAULT EARTH REGION ::

copy earthz.3dc defaults.3dc
rem copy earth.3dc defaultp.3dc

ECHO :: PREPARING ORIGINAL FF, ACM and XC SCENARIOS ::

.\bin\prepare bc3k0000.scr
.\bin\prepare bc3k0100.scr
.\bin\prepare bc3k9900.scr

ECHO :: BUILDING LANGUAGE DEFINITION FILES ::

.\bin\prepare PHRASES bc3k0000.scr
.\bin\prepare PHRASES bc3k0100.scr
.\bin\prepare PHRASES bc3k9900.scr

ECHO :: BUILDING MFS RESOURCE FILES ::
ECHO :: BUILDLIB.EXE IS NOT Y2K COMPLIANT ::
ECHO :: SO WE MODIFY THE DATE BEFORE RUNNING IT ::

date 12-31-99
.\bin\buildlib @bc3lib4.idx
date

goto ok

:fail
echo AN ERROR OCCURED!
goto exit

:ok
echo BC3LIB4.RES BUILT!

:exit
