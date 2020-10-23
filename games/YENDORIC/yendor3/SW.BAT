ECHO OFF
REM Environment varible "SWGAME" is preset to zero
REM Then if a "BLASTER" variable is found, "SWGAMES" is set to one
REM The variable "SWGAMES" is tested and the following is done:
REM   0 - runs game program without loading SBFMDRV
REM   1 - will load sbfmdrv.com from this directory
REM       will run the game program
REM       at exit will unload the SBFMDRV.COM tsr program


SET SWGAMES=0

IF "" == "%BLASTER%" GOTO RUNP
SET SWGAMES=1
SBFMDRV > NUL

:RUNP
IF EXIST SHAREWAR.EXE GOTO SHAREWAR
IF EXIST REGISTER.EXE GOTO REGISTER
GOTO END

:SHAREWAR
SHAREWAR.EXE %1 %2 %3 %4 %5 %6 /B /W
GOTO END

:REGISTER
REGISTER.EXE %1 %2 %3 %4 %5 %6 /B /W

:END
IF %SWGAMES% == 0 GOTO EXIT
SBFMDRV /U > NUL

:EXIT
SET SWGAMES=
