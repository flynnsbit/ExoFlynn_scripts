@echo off
if not exist snd\dig.ini goto nosound
if not exist snd\mdi.ini goto nosound

:sound
wwf4 %1
goto done

:nosound
wwf4 %1 -s
goto done

:done

rem A note from the programmers...
rem Move to the sound directory SND
rem and run playavi d:ssilogo where
rem d: is your CDROM drive letter...


