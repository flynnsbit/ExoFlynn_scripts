@Echo off
echo off
:ReTry
CLS
IF exist FORD90.EXE goto run
Echo   ษอออออออออออออออออออออออออออออออออออออออออป
Echo   บ                                         บ
Echo   บ   Please insert the FORD SIMULATOR II   บ
Echo   บ           disk number One               บ
Echo   บ         in the current drive,           บ
Echo   บ    and press SPACEBAR to continue...    บ
Echo   บ                                         บ
Echo   บ       (Press [CONTROL-C] to exit)       บ
Echo   ศอออออออออออออออออออออออออออออออออออออออออผ
Pause > NUL:
GoTo ReTry
GoTo ReTry
:run
FORD90
