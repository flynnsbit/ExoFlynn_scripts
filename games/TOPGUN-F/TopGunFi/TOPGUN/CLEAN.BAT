@echo off
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ This batch file is provided to clean out the components used to patch บ
echo บ your English Top Gun: Fire At Will installation.  Run this only after บ
echo บ a successful patch.  Hit CTRL-BREAK if you don't want to continue.    บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
pause
del *.rtp
if exist install.exe del install.exe
if exist $$doit$$.exe del $$doit$$.exe
if exist tgv11.exe del tgv11.exe
echo Unused Patch Components Removed
