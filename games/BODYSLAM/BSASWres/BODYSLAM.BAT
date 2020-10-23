:top
@echo off
if not exist eation.cfg goto error
tag
goto end

:error
@echo No sound configuration file found - I will now run sound setup.
pause
call setsound
goto top

:end
