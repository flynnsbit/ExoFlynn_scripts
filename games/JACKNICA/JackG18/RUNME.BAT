ECHO OFF
CLS
IF ".%1" == "." GOTO USAGE
TYPE TITLE.PTL
PAUSE
GOLF%1
GOTO END

:USAGE
ECHO Usage: RUNME {c�e�t�m} for CGA, EGA, Tandy or MCGA respectively.

:END
EXIT
