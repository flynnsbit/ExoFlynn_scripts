ECHO OFF
CLS
ECHO �
ECHO � This command backs up the VariTale files to a subdirectory of
ECHO � the current directory, which must be named BACK.  If you have
ECHO � not already created this directory, press  N  and do so, now.
ECHO �
QUERY Back up VariTale files?  (Y/N)  @YN
IF ERRORLEVEL 2 GOTO NOBU
COPY VARI*.VTB BACK
COPY VARI*.TOC BACK
COPY VARITALE.LST BACK
:NOBU
