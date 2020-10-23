@echo off
If %1x==x goto usage
If %1==swapbas goto label01
If %1==keytrap goto label02
If %1==dungeon goto label1
If %1==ansi goto label2
If %1==help goto label3
If %1==util goto label4
If %1==edit goto label5
If %1==mapedit goto label6
goto usage
:label01
@echo on
tasm -t swapbas;
goto stop
:label02
@echo on
tasm -t keytrap;
goto stop
:label1
@echo on
bc dungeon/e/o/s/g3;
link swapbas+dungeon+keytrap,Dungeon.exe,Nul/e;
goto stop
:label2
@echo on
bc ansi/e/o/s/g3;
link ansi/e;
goto stop
:label3
@echo on
bc help/e/o/s/g3;
link help+keytrap/e;
goto stop
:label4
@echo on
bc util/e/o/s/g3;
link util/e;
goto stop
:label5
@echo on
bc edit/e/o/s/g3;
link edit/e;
goto stop
:label6
@echo on
bc mapedit/e/o/s/g3;
link mapedit/e;
goto stop
:usage
@echo Usage:
@echo   compile [compile-command]
@echo Where compile-command is:
@echo   swapbas  - make swapbas.obj from assembly program
@echo   keytrap  - make keytrap.obj from assembly program
@echo   dungeon  - make dungeon.exe main program
@echo   ansi     - make ansi.exe screen program
@echo   help     - make help.exe help program
@echo   util     - make util.exe utility program
@echo   edit     - make edit.exe utility program
@echo   mapedit  - make mapedit.exe utility program
@echo Example:
@echo   compile dungeon
goto done
:stop
@echo off
@echo End %0 %1
:done
@echo on
