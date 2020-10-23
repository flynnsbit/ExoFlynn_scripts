@D:
@cd D:\game 
:START
@intro -C:/THEME.CD
@main -cD:/game/ -dC:/THEME.CD/ -l0
@IF ERRORLEVEL 10 GOTO START
@cd \