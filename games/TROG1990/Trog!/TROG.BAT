@ECHO OFF
CALLER
IF ERRORLEVEL 255 GOTO end
IF ERRORLEVEL 8 GOTO vga
IF ERRORLEVEL 4 GOTO tga
IF ERRORLEVEL 2 GOTO ega

RUN 1
goto end

:ega
RUN 2
goto end

:tga
RUN 4
goto end

:vga
RUN 8
goto end

:end
