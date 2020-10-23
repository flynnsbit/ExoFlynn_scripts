@echo off
If %1x==x goto usage
If %1==swapbas goto label01
If %1==keytrap goto label02
If %1==dungeon goto label1
If %1==ansi goto label2
If %1==help goto label3
If %1==util goto label4
If %1==edit goto label5
goto usage
:label01
@echo on
type swapbas.asm > prn
goto stop
:label02
@echo on
type keytrap.asm > prn
goto stop
:label1
@echo on
type dungeon.bas > prn
goto stop
:label2
@echo on
type ansi.bas > prn
goto stop
:label3
@echo on
type help.bas > prn
goto stop
:label4
@echo on
type util.bas > prn
goto stop
:label5
@echo on
type edit.bas > prn
goto stop
:usage
@echo Usage:
@echo   list [source-file]
@echo Where source-file is:
@echo   swapbas  - print swapbas.asm utility program
@echo   keytrap  - print keytrap.asm utility program
@echo   dungeon  - print dungeon.bas main program
@echo   ansi     - print ansi.bas screen program
@echo   help     - print help.bas help program
@echo   util     - print util.bas utility program
@echo   edit     - print edit.bas utility program
@echo Example:
@echo   list dungeon
goto done
:stop
@echo off
@echo End %0 %1
:done
@echo on
