@ECHO OFF
CLS

IF NOT EXIST C:\DOS\SMARTDRV.EXE GOTO Next1
LH C:\DOS\SMARTDRV.EXE 
GOTO SmartDone

:Next1
IF NOT EXIST C:\WINDOWS\SMARTDRV.EXE GOTO Next2
LH C:\WINDOWS\SMARTDRV.EXE
GOTO SmartDone

:Next2
IF NOT EXIST C:\WINDOWS\OPTIONS\CABS\SMARTDRV.EXE GOTO Next3
LH C:\WINDOWS\OPTIONS\CABS\SMARTDRV.EXE
GOTO SmartDone

:Next3
IF NOT EXIST SMARTDRV.EXE GOTO Next4
LH SMARTDRV.EXE
GOTO SmartDone

:Next4
ECHO.
ECHO ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO ³  FILE NOT FOUND: smartdrv.exe                                          ³
ECHO ³                                                                        ³
ECHO ³  Please search your Microsoft Windows CDROM for the file SMARTDRV.EXE  ³
ECHO ³  and copy the file to your 747 folder.                                 ³
ECHO ³  If smartdrv.exe is not loaded, the simulator may run very slowly.     ³
ECHO ³                                                                        ³
ECHO ³  Note: This file is only needed if Microsoft Windows is completely     ³
ECHO ³  shutdown and you're running Precision Simulator in pure MS-DOS mode.  ³
ECHO ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
ECHO.
ECHO If you don't want to load Precision Simulator now, press CTRL+C
ECHO Otherwise...
GOTO NotFoundDone

:SmartDone
ECHO.
ECHO ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO ³              Press any key to load Precision Simulator.                ³
ECHO ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ

:NotFoundDone
PAUSE

:End
PS %1