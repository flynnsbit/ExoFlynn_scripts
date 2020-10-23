@echo off
del   .\zip\motox.zip

pkzip -P .\zip\motox.zip .\source\*.*
pkzip -P .\zip\motox.zip .\headers\*.*
pkzip -P  .\zip\motox.zip .\*.*


rem
rem graphics.
rem

del   .\zip\motoxg.zip



pkzip -Pr .\zip\motoxg.zip .\graphics\*.*


Echo.
Echo    Copying compressed data to Drive A:
Echo        Insert Program backup disk
Pause       

copy zip\motox.zip A:\ /y


Echo        Insert Graphics backup disk
Pause       
copy zip\motoxg.zip A:\  /y

Echo    Backup complete.






