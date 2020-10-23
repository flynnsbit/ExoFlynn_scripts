@Echo Off
IF (%1)==() GOTO USAGE
goto doit

:USAGE
CLS
ECHO                         * Please Type INSTALL C *
ECHO                  Where C Is Your Hard Drive (C, D, Etc.)
ECHO                        * PRESS (CTRL-C) TO ABORT *
Pause

:doit

MD %1:\CAPSTONE
MD %1:\CAPSTONE\TBH
%1:
@cd\capstone\TBH
@COPY a:*.*
@Install2
