@echo  off
IF "%1" == "ON"		goto on:
IF "%1" == "on"		goto on:
IF "%1" == "off"	goto off:
IF "%1" == "OFF"	goto off:

goto exit

:on
call uvconfig -gen
goto exit

:off
del univbe.drv
:exit
