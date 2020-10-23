ECHO OFF
inst.exe
IF ERRORLEVEL -1 GOTO END
@Call setup.bat
:END