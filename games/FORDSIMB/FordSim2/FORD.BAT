@Echo off
echo off
:ReTry
CLS
IF exist FORD90.EXE goto run
Echo   浜様様様様様様様様様様様様様様様様様様様様�
Echo   �                                         �
Echo   �   Please insert the FORD SIMULATOR II   �
Echo   �           disk number One               �
Echo   �         in the current drive,           �
Echo   �    and press SPACEBAR to continue...    �
Echo   �                                         �
Echo   �       (Press [CONTROL-C] to exit)       �
Echo   藩様様様様様様様様様様様様様様様様様様様様�
Pause > NUL:
GoTo ReTry
GoTo ReTry
:run
FORD90
