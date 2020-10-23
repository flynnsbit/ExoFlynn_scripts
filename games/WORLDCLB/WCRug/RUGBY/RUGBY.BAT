echo off
:begin
IF EXIST RC.SIG GOTO CGARUN
IF EXIST RE.SIG GOTO VGARUN
ECHO Please insert program disk1
PAUSE
GOTO begin

:VGARUN

break off
cls
echo  ##**##**##**##**##**##**##**##**##
echo  ##**    World Class Rugby     **##
echo  ##**   Five Nations Edition   **##
echo  ##**                          **##
echo  ##**      1 Ega game          **##
echo  ##**      2 Vga game          **##
echo  ##**                          **##
echo  ##**##**##**##**##**##**##**##**##
options
if errorlevel 2 goto vga
if errorlevel 1 goto ega

:vga
RE v%1
goto finish
:ega
RE %1
goto finish

GOTO FINISH

:CGARUN

break off
cls
echo  ##**##**##**##**##**##**##**##**##
echo  ##**    World Class Rugby     **##
echo  ##**   Five Nations Edition   **##
echo  ##**                          **##
echo  ##**      1 Cga game          **##
echo  ##**      2 Hercules game     **##
echo  ##**                          **##
echo  ##**##**##**##**##**##**##**##**##
options
if errorlevel 2 goto hga
if errorlevel 1 goto cga

:hga
RC H
GOTO FINISH

:cga
RC

GOTO FINISH
:FINISH




