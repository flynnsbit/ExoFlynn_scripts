@ECHO OFF
IF "%3"=="" GOTO END
SET t=C:\BUBU
SET t1=\RECX
SET t2=\STORYBOY.?
SET t3=\MAIN.PAL

IF "%3"=="R" GOTO READ

rem ***************
@COPY/b %t%%t1% %2: >NUL
@COPY/b %t%%t2% %2: >NUL
@COPY/b %t%%t3% %2: >NUL
GOTO END

:READ
rem ***************
@COPY/b %2:%t1% %t% >NUL
@COPY/b %2:%t2% %t% >NUL
@COPY/b %2:%t3% %t% >NUL

:END
