@echo off
cls
if exist c:\g.in goto play
setsound.exe
:play
D:
cd\
cd tucker
if not exist intro.exe goto no_cd
intro.exe
C:
tucker.exe
goto the_end
:no_cd
@echo Insert CD before running game
:the_end



