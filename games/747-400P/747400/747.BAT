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
ECHO 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
ECHO �  FILE NOT FOUND: smartdrv.exe                                          �
ECHO �                                                                        �
ECHO �  Please search your Microsoft Windows CDROM for the file SMARTDRV.EXE  �
ECHO �  and copy the file to your 747 folder.                                 �
ECHO �  If smartdrv.exe is not loaded, the simulator may run very slowly.     �
ECHO �                                                                        �
ECHO �  Note: This file is only needed if Microsoft Windows is completely     �
ECHO �  shutdown and you're running Precision Simulator in pure MS-DOS mode.  �
ECHO 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸
ECHO.
ECHO If you don't want to load Precision Simulator now, press CTRL+C
ECHO Otherwise...
GOTO NotFoundDone

:SmartDone
ECHO.
ECHO 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
ECHO �              Press any key to load Precision Simulator.                �
ECHO 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸

:NotFoundDone
PAUSE

:End
PS %1