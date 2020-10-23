@echo off
if exist egaver.ega goto Egaintro
goto Vgaintro
:Egaintro
obj\cintro.exe E
goto Main
:Vgaintro
obj\cintro.exe
goto Main

:Main
obj\conquest.exe
if exist saves\11.sav goto Outro
goto Ende

:Outro
if exist egaver.ega goto Egaoutro
goto Vgaoutro
:Egaoutro
obj\cintro.exe O E
del saves\11.sav
goto Ende
:Vgaoutro
obj\cintro.exe O
del saves\11.sav
goto Ende
:Ende
@echo on