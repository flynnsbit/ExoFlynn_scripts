@echo off
C:
cd\MATHWORD
 
soundBST.exe /p220 /i7
speech.exe /e
C:\MATHWORD\lt /A %1 %2 %3 %4 %5
@echo off
remove.exe
nosound.exe
 
C:\
