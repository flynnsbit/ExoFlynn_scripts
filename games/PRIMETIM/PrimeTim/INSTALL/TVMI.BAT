echo off
cls
ECHO    LOAD TV MOGUL : INTERNAL SPEAKER SOUND SUPPORT
if exist %1:\MOGUL\TVM.EXE goto custom      
if not exist d:\MOGUL\TVM.EXE goto error
APPEND d:\MOGUL /x:on /path:on
goto start
echo on
:error
echo Can't find TV MOGUL!
echo.    
echo If your CD-ROM is NOT Drive D:, specify the drive when
echo you type TVMI. For example, If your CD-ROM drive is device E:
echo type TVMI E
goto end
:custom
append %1:\MOGUL /X:ON /PATH:ON
:start
echo "Loading TV MOGUL..."
TVM.EXE I
:end
append ;
