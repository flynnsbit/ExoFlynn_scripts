@echo off
cd drivers >nul:
setd
IF ERRORLEVEL 1 GOTO ABORTED1
setm
IF ERRORLEVEL 1 GOTO ABORTED2
GOTO END
:ABORTED1
cd ..
echo Digital Sound Driver configuration was not completed.
GOTO FINI
:ABORTED2
cd ..
echo Midi Music Driver configuration was not completed.
GOTO FINI
:END
cd..
copy drivers\soundrv.com sound.1
del drivers\soundrv.com >nul:
copy drivers\midpak.adv sound.2
del drivers\midpak.adv >nul:
copy drivers\tmidpak.com sound.3
del drivers\midpak.com >nul:
copy drivers\midpak.ad sound.4
del drivers\midpak.ad >nul:
echo Sound Configuration Complete!
:FINI
