ECHO OFF
CLS
ECHO º
ECHO º This command backs up the VariTale files to a subdirectory of
ECHO º the current directory, which must be named BACK.  If you have
ECHO º not already created this directory, press  N  and do so, now.
ECHO º
QUERY Back up VariTale files?  (Y/N)  @YN
IF ERRORLEVEL 2 GOTO NOBU
COPY VARI*.VTB BACK
COPY VARI*.TOC BACK
COPY VARITALE.LST BACK
:NOBU
