@echo off
    
type crime.txt

:LOOP
respond
if errorlevel 52 goto LOOP
if errorlevel 51 goto THE_END
if errorlevel 50 goto VGALOAD
if errorlevel 49 goto EGALOAD
goto loop

:VGALOAD
fx_neil
kit 3a
goto END

:EGALOAD
fx_neil
kit 2a

:END
fx_neil /U


:THE_END



