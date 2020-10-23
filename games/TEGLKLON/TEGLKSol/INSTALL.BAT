REM -----------------------------------------------------
REM Run this batch file to install TEGL. SEE USAGE AT END
REM -----------------------------------------------------
@echo off
cls
set tginpath=\tegl
REM -- CHECK THE COMMAND LINE PARAMETERS
IF "%1p" == "p" GOTO USAGE
IF "%2p" == "p" GOTO USAGE
set tginsrc=%1
set tgindrv=%2
IF %tgindrv% == %tginsrc% GOTO FATAL1
IF "%2" == "a:" GOTO FATAL2
IF "%2" == "b:" GOTO FATAL2
IF "%2" == "A:" GOTO FATAL2
IF "%2" == "B:" GOTO FATAL2
IF "%2" == "c" GOTO FATAL4
IF "%2" == "C" GOTO FATAL4
IF "%2" == "d" GOTO FATAL4
IF "%2" == "D" GOTO FATAL4
IF "%2" == "e" GOTO FATAL4
IF "%2" == "E" GOTO FATAL4
IF "%2" == "f" GOTO FATAL4
IF "%2" == "F" GOTO FATAL4
IF "%1" == "a" GOTO FATAL4
IF "%1" == "b" GOTO FATAL4
IF "%1" == "A" GOTO FATAL4
IF "%1" == "B" GOTO FATAL4
IF NOT EXIST %1\install.bat GOTO USAGE

type what.txt
pause
cls
echo зддддддддддддддддддддддддддддддддддддддддддддддддддд©
echo Ё INSTALL PATHS:                                    Ё
echo цддддддддддддддддддддддддддддддддддддддддддддддддддды
echo Ё Source drive is %1
echo Ё Target drive is %2
echo Ё Target directory is %2%tginpath%
echo цддддддддддддддддддддддддддддддддддддддддддддддддддд©
echo ЁIf you are ready to continue with installation     Ё
echo Ёpress a key otherwise press Ctrl-Break to cancel   Ё
echo юддддддддддддддддддддддддддддддддддддддддддддддддддды
pause
REM ддддддддддддддддддддддддддддддддддддддддддддддддддддд
REM INSTALLATION BEGINS HERE. Change to target drive
REM then create the directory.
echo installing . . .
%tgindrv%
cd \
md %tginpath%
IF NOT EXIST %tgindrv%%tginpath%\PRN GOTO FATAL3
cd %tginpath%
copy %tginsrc%\*.*
cls
echo здддддддддддддддддддддддддддддддддддддддддддддддддддддддд©
echo Ё Installation is complete!                              Ё
echo цдддддддддддддддддддддддддддддддддддддддддддддддддддддддд╢
echo Ё Information files will now be displayed. Press the     Ё
echo Ё Escape Key after reading each file. To run the games   Ё
echo Ё type help or go.                                       Ё
echo юдддддддддддддддддддддддддддддддддддддддддддддддддддддддды
pause
readme
:FATAL1
echo здддддддддддддддддддддддддддддддддддддддддддд©
echo Ё Source and destination are the same!!!     Ё
echo Ё INSTALL CANNOT CONTINUE.                   Ё
echo юдддддддддддддддддддддддддддддддддддддддддддды
GOTO END
:FATAL2
echo зддддддддддддддддддддддддддддддддддддддддддд©
echo ЁCannot install to Drive A: or B:           Ё
echo юддддддддддддддддддддддддддддддддддддддддддды
GOTO END
:FATAL3
echo ------------------------------------------
%tginsrc%
echo здддддддддддддддддддддддддддддддддддддддддд©
echo Ё Could not create target directory.       Ё
echo юдддддддддддддддддддддддддддддддддддддддддды
GOTO END
:FATAL4
echo здддддддддддддддддддддддддддддддддддддддддддддд©
echo Ё  Invalid drive specifier. Include colon.     Ё
echo юдддддддддддддддддддддддддддддддддддддддддддддды
GOTO END
:USAGE
echo здддддддддддддддддддддддддддддддддддддддддддддддд©
echo Ё You must specify the SOURCE drive and the      Ё
echo Ё DESTINATION drive as arguments to install as   Ё
echo Ё the first two arguments include the colons.    Ё
echo Ё EXAMPLE: install a: c:                         Ё
echo юдддддддддддддддддддддддддддддддддддддддддддддддды
:END

