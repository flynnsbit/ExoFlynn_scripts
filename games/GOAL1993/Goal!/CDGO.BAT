@echo off
if exist cdpatch.exe lh cdpatch.exe c:
goal.exe
if exist cdpatch.exe cdpatch.exe x
pause
