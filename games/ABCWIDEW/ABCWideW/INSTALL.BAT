Echo Off
if exist INSTALL.BAT goto CONTINUE
Echo Please change to the drive and directory containing INSTALL.
Echo Then type INSTALL and press Enter.
goto SKIP
:CONTINUE
If exist INSTALL.FLG goto SKIP
echo . > INSTALL.FLG
:SKIP
if exist SETUP.EXE setup config.blt files.txt 2
