@echo off
C:
cd\FRACTION
 
soundBST.exe /p220 /i7
speech.exe /e
C:\FRACTION\ft /A /I /B %1 %2 %3 %4 %5
@echo off
remove.exe
nosound.exe
 
C:\
