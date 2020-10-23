echo OFF
if %1x == x goto help
if %1 == A: goto START
if %1 == a: goto START
if %1 == B: goto START
if %1 == b: goto START
:HELP
echo --------------------------------
echo  Usage: INSTALL [floppy drive:]
echo --------------------------------
echo Example:
echo ÿ
echo	PREPARE A:   -- Will create the original 2 Star Quest disks on drive A:
echo ÿ
goto END
:START
ECHO .
ECHO . Insert a blank disk in drive %1	  "Star Quest 1   DISK 1 of 2"
ECHO .
pause
copy install.exe %1 /v
copy sharewar.dat %1 /v
copy readme. %1 /v
copy copyzip.bat %1 /v
copy pkunzip.exe %1 /v
copy sq1a.zip %1 /v
copy sq1b.zip %1 /v
copy sq1c.zip %1 /v
ECHO .
ECHO . Insert a blank disk in drive %1	  "Star Quest 1   DISK 2 of 2"
ECHO .
pause
copy sq1d.zip %1 /v
copy file_id.diz %1 /v
copy prepare.bat %1 /v
copy readme. %1 /v
ECHO .
ECHO . Press any key to install the game now, otherwise press [CTRL-C]
ECHO .
pause
ECHO .
ECHO . Insert disk "Star Quest 1  DISK 1 of 2" in drive %1
ECHO .
pause
%1\install
:END
