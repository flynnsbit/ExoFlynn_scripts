REM ------ INSTALLATION FOR SINGLE FLOPPY -------
echo off
cls
rem --- flag each dest disk ---

%DST%
:start
if %1==4 goto endf
cls
echo Please insert a BLANK formatted disk in drive %dst%
pause
if not exist *.* goto ok
echo THIS DISK IS NOT BLANK
pause
GOTO START
:OK

echo x >D%1.
ECHO Remove the disk in drive %dst% and label it NAVY SEAL #%1.
pause

shift
goto start
:endf

cls

SET NAME=#1
set dNAME=NAVYSEAL-1
:IND1
ECHO Diskette for drive %SRC% = DISTRIBUTION disk %NAME%.
echo Diskette for drive %DST% = DESTINATION disk %dNAME%.
echo Please insert destination disk %dNAME% in drive %dst%
pause
%dst%
if not exist %dst%d1. goto IND1
ECHO Diskette for drive %SRC% = DISTRIBUTION disk %NAME%.
echo Diskette for drive %DST% = DESTINATION disk %dNAME%.
%SRC%NS1


SET NAME=#2
if %sd%==5 set dNAME=NAVYSEAL-2
:SRC2
if %sd%==3 goto IND2 
ECHO Diskette for drive %SRC% = DISTRIBUTION disk #%NAME%.
echo Diskette for drive %DST% = DESTINATION disk %dNAME%.
echo Please insert distribution disk #%NAME% in drive %src%
pause
if not exist %src%NS2.exe goto src2
:IND2
if %sd%==5 ECHO Diskette for drive %SRC% = DISTRIBUTION disk %NAME%.
echo Diskette for drive %DST% = DESTINATION disk %dNAME%.
echo Please insert destination disk %dNAME% in drive %dst%
pause
%dst%
if not exist %dst%d2. goto IND2
if %sd%==5 ECHO Diskette for drive %SRC% = DISTRIBUTION disk %NAME%.
echo Diskette for drive %DST% = DESTINATION disk %dNAME%.
%SRC%NS2

if %sd%==5 SET dNAME=NAVYSEAL-3
:IND3
if %sd%==5 ECHO Diskette for drive %SRC% = DISTRIBUTION disk %NAME%.
echo Diskette for drive %DST% = DESTINATION disk %dNAME%.
echo Please insert destination disk %dNAME% in drive %dst%
pause
%dst%
if not exist %dst%d3. goto IND3
if %sd%==5 ECHO Diskette for drive %SRC% = DISTRIBUTION disk %NAME%.
echo Diskette for drive %DST% = DESTINATION disk %dNAME%.
%SRC%NS3
:END
set src=
set dst=
set three=
set confirm=
set DRV=
SET NAME=
echo .
echo IF YOU INSTALLED WITH A RAM DRIVE THEN...
echo Please restore the original CONFIG.SYS file on your DOS disk and REBOOT!
echo .
echo Please reboot your computer before continuing.
echo See the instructions in the manual for starting the program.
