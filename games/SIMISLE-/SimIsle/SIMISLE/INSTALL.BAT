@echo off
inst.exe
if NOT EXIST exist.cfg goto notdone
setsound.exe
del exist.cfg
@echo .
@echo Type GO to play Simisle now.
goto done

:notdone
if NOT EXIST dosound.cfg goto bad
del dosound.cfg
@echo.  
@echo Please type "SETSOUND" to alter your sound settings.

goto done:
:bad
@echo . 
@echo Installation may not be complete.


:done
