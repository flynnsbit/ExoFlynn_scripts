@echo off
echo 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
echo � This batch file is provided to clean out the components used to patch �
echo � your English Top Gun: Fire At Will installation.  Run this only after �
echo � a successful patch.  Hit CTRL-BREAK if you don't want to continue.    �
echo 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
pause
del *.rtp
if exist install.exe del install.exe
if exist $$doit$$.exe del $$doit$$.exe
if exist tgv11.exe del tgv11.exe
echo Unused Patch Components Removed
