echo off
cls
if "%1" == "" goto usage
if exist %1\bclass\nul goto goahead
echo Creating BCLASS directory....
mkdir %1\bclass
:goahead
copy bc.bat %1\
echo Copied BC.BAT to root directory.....
echo.
cd %1\bclass
copy *.ran %1\bclass
copy *.asc %1\bclass
copy *.map %1\bclass
copy *.pic %1\bclass
copy bcinstal.bat %1\bclass
copy orderfrm.txt %1\bclass
copy q&a.txt %1\bclass
copy register.txt %1\bclass
copy map.trn %1\bclass
copy *.doc %1\bclass
copy bassclas.exe %1\bclass
copy bclass.doc %1\bclass
if exist %1\bclass\bigfish.txt goto ask
copy bigfish.txt %1\bclass
copy bigstr.txt %1\bclass
goto movealong
:ask
cls
echo NOTE ********
echo.
echo The Bass Class installation is almost done, but a file of BIG FISH
echo records has been found in the BCLASS directory.
echo. 
echo Continuing this installation will overwrite these records and your
echo BIG STRINGER records, establishing new records to beat.
echo.
echo Press CTRL-BREAK then answer Y to the TERMINATE BATCH JOB question to
echo stop the installation NOW and preserve these records. Press any other
echo key to continue with the installation which will establish new
echo minimum records to beat.
echo.
echo If you stop the installation now, change to the drive and directory where
echo you installed the game, then type BASSCLAS to run it.
echo.
pause
echo Replacing old BIG FISH and BIG STRINGER records with default values...
copy bigfish.txt %1\bclass
copy bigstr.txt %1\bclass
goto movealong
:movealong
%1
cls  
echo -------------------------------------------------------------------
echo Bass Class installation is completed. To run the program now, just type
echo BASSCLAS (then press ENTER). To run it in the future, type BC (then ENTER).
echo -------------------------------------------------------------------
echo.
echo If your Bass Class disk contains a README.DOC file, be sure to read it.
echo It may contain last minute information about Bass Class.
echo.
echo To print the Bass Class manual, type COPY BCLASS.DOC PRN then press ENTER.
echo.
goto end
:usage
echo    You must specify a disk drive where Bass Class is to be installed:
echo.
echo    EXAMPLES:            bcinstal c: 
echo                           -OR-
echo                         bcinstal d:
echo.
echo    Notice the c: and the d: at the end of the command. These specify
echo    where you want to install Bass Class.
goto end
:end