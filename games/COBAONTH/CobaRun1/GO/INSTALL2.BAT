@echo off
install
IF EXIST install.set GOTO EXIT_INSTALL 
setup
:EXIT_INSTALL