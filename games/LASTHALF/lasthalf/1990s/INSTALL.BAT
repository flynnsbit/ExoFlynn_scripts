@ECHO OFF

cls
if #%1 == # goto noparam
if #%2 == # goto noparam

if exist %1\%2\nul goto noway
echo.
echo.
echo.
echo                     Creating Directory %2 on Drive %1
md %1\%2
goto inst2

:install
cls
:inst2
echo.
echo                     Decompressing files to %1\%2
echo.
echo                ษออออออออออออออออออออออออออออออออออออออออออออป 
echo                บ --- Now decompressing the master files --- บ
echo                ศออออออออออออออออออออออออออออออออออออออออออออผ
echo.
COPY UNPACK*.* %1\%2 > NUL
COPY INSTALL.BAT %1\%2 > NUL
COPY BYE.SCR %1\%2 > NUL
%1
CD %1\%2 
UNPACK
DEL UNPACK.EXE
cls
type bye.scr
prompt $p$g
goto end

:noway
echo [41;37m
cls
type warning.scr
ask "           Do you want to proceed with the installation (Y/N) ? ",yn 
if errorlevel 2 goto return
if errorlevel 1 goto install


:noparam
cls
ECHO.
ECHO.
echo.
ECHO                 ษอออออออออออออออออออออออออออออออออออออออออออออออป
echo              ฒฒ บ    The correct syntax for this command is:    บ
echo              ฒฒ บ                                               บ
echo              ฒฒ บ            INSTALL Drive Directory            บ
echo              ฒฒ บ                                               บ
echo              ฒฒ บ    with blank spaces separating each part.    บ
echo              ฒฒ บ            ie: INSTALL C: UTILITY             บ
echo              ฒฒ บ                                               บ
ECHO              ฒฒ บ           ---  Please try again  ---          บ
ECHO              ฒฒ บ           or type PDN to cancel ....          บ
ECHO              ฒฒ ศอออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.             ฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒ
ECHO.
echo.
goto out

:return
initiate

:end
echo [0m

:out
