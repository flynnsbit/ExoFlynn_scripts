@echo off
cd americ
rem usage: AMERICA [-v]
rem If -v is given, user can hit Ctrl-PrintScreen to dump the screen to a file.
if "%1"=="-V" goto vgacapt
if "%1"=="-v" goto vgacapt
moustest
if errorlevel 1 goto nomouse
rem no special tsrs needed
ka -520k kav.pgm -lC:\AMERIC -rC:\AMERIC -fC:\AMERIC
rem no special tsr cleanup needed
goto end
:nomouse
mouse
rem no special tsrs needed
ka -520k kav.pgm -lC:\AMERIC -rC:\AMERIC -fC:\AMERIC
rem no special tsr cleanup needed
mouse /u
goto end
:vgacapt
moustest
if errorlevel 1 goto vnomouse
rem no special tsrs needed
vgacapt ka -520k kav.pgm -lC:\AMERIC -rC:\AMERIC -fC:\AMERIC
rem no special tsr cleanup needed
goto end
:vnomouse
mouse
rem no special tsrs needed
vgacapt ka -520k kav.pgm -lC:\AMERIC -rC:\AMERIC -fC:\AMERIC
rem no special tsr cleanup needed
mouse /u
:end
echo Thank you for using America Adventure
echo   ...From the folks at Knowledge Adventure
