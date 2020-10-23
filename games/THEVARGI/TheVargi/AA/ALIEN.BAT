@ECHO OFF
CD IEV
IF EXIST c:\iv\flag1.sav del c:\iv\flag1.sav
IF EXIST c:\iv\flag2.sav del c:\iv\flag2.sav
IF EXIST c:\iv\info1.sav del c:\iv\info1.sav
:intro
intro01.exe
vrun -wrs intro.wrs -wdl intro01.wdl -NJ -d ENGLISH > NUL
IF NOT EXIST c:\iv\flag1.sav GOTO checkflag2
:flag1
del c:\iv\flag1.sav
intro02.exe
vrun -wrs intro.wrs -wdl intro02.wdl -NJ -d ENGLISH > NUL
IF EXIST c:\iv\info1.sav del c:\iv\info1.sav
IF EXIST c:\iv\flag1.sav GOTO flag1
:checkflag2
IF EXIST c:\iv\flag2.sav GOTO flag2
GOTO end
:flag2
del c:\iv\flag2.sav
end01.exe
GOTO intro
:end
CD \
