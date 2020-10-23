@ECHO OFF
CLS
ECHO =========================================================================
IF "%1" == "C:" GOTO INST_DRV_C
IF "%1" == "c:" GOTO INST_DRV_C
IF "%1" == "D:" GOTO INST_DRV_D
IF "%1" == "d:" GOTO INST_DRV_D
GOTO ERR_DRIVER
:INST_DRV_C
:INST_DRV_D
ECHO Make driectory %1\APCC
MD %1\APCC
ECHO COPED FILES...
COPY *.* %1\APCC > NUL
GOTO EXIT_INSTALL
GOTO EXIT_INSTALL
:ERR_DRIVER
ECHO:
ECHO  INSTALL [DRV]
ECHO:
ECHO  INSTALL C: -- INSTALL DRIVER C:
:EXIT_INSTALL
ECHO ==========================================================================
