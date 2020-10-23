ECHO OFF
CLS
ECHO 		E = Dick Tracy EGA\VGA
ECHO 		C = Dick Tracy CGA\Hercules
KEY
IF ERRORLEVEL=69 GOTO CGA
CGA
goto fin
:CGA
EGA
:fin
