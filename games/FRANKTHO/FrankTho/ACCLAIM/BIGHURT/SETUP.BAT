@echo  off

mode co80

IF "%1" == "ON"		goto on:
IF "%1" == "on"		goto on:
IF "%1" == "off"	goto off:
IF "%1" == "OFF"	goto off:
IF "%1" == "snd"	goto snd:
IF "%1" == "SND"	goto snd:

echo Type SETUP SND to change sound card setup
echo Type SETUP OFF to disable UniVBE
echo Type SETUP ON to re-enable UniVBE
goto exit

:on
IF NOT EXIST uvconfig.exe GOTO reinstall
call uvconfig -p audio\
goto exit

:off
del audio\univbe.drv
del audio\uvconfig.dat
goto exit

:snd
cd audio
call setsound.exe
cd ..
goto exit

:reinstall
echo Setup is unable to find UniVBE.exe
echo Please re-install the game.
:exit
