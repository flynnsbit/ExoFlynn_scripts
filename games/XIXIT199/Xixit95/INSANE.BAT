echo off
cls
:restart
cls
@echo ีออออออออออออออออออออออออออธ
@echo ณ XIXIT (c) Optik Software ณ 
@echo ฦออออออออออออออออออออออออออต
@echo ณ                          ณ
@echo ณ (1) Start Game           ณ
@echo ณ (2) Setup Game           ณ
@echo ณ                          ณ
@echo ณ (0) Exit                 ณ
@echo ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
ASK
if errorlevel 3 goto restart
if errorlevel 2 goto setup
if errorlevel 1 goto start
if errorlevel 0 goto einde
WAIT

:start
cls
xixit 
goto einde

:setup
cls
setup
goto restart

:einde
