@ECHO OFF
REM UEFALMP2 BATCH FILE V2.02  10 April 1997
REM Allows EUFALMEM.bat to work, when renamed as UEFA.bat
SET DOS4GVM=deleteswapfile:off,SwapFilename:Uefa.swp,physmax:6144k,physmin:6144k,swapmin:16384k,swapinc:0
cls
echo.
echo.
ENV DOS4GVM deleteswapfile:off,SwapFilename:Uefa.swp,physmax:6144k,physmin:6144k,swapmin:16384k,swapinc:0  >> NUL:
if ERRORLEVEL 1 goto bad
goto SetOk

:bad
if "%1"=="" command.com /E:16384 /C Uefalmp2.bat again
IF ERRORLEVEL 1 goto bad2
goto exit

:bad2
cls
echo.
echo.
echo 8 Mbyte version Error!
echo.
echo Not enough dos environment space to set the dos4gvm environment variable.
echo Cannot find and run "Command.com", to increase this size.
echo Does the Config.sys variable "PATH=" contain the location of "command.com" ?
echo.
echo Try typing "C:\COMMAND.COM /E:2048"  then ENTER
echo If command.com is not on C:\ root directory type:
echo "C:\[your_command_dot_com_directory]\COMMAND.COM /E:2048" then ENTER
echo The [directory] could be "C:\DOS", "C:\WINDOWS" or somewhere else.
echo For example  "C:\DOS\COMMAND.COM /E:2048" then ENTER
echo.
echo You can also add or re-configure a SHELL statement in the config.sys file
echo to gain more Dos Environment space when you boot up your system.
echo.
echo Please refer to the README file on the CD rom.
echo.
echo If you have Windows 95 installed, please install and run the UEFA game,
echo from within Windows 95, rather than under DOS, on 8 megabyte systems.
echo.
goto Exit

:SetOk
echo.
echo.
echo 8 MByte version, running under dos4gvm.
echo.
echo 8 MByte VMM environment variables initialied, and verified correctly.
echo.
echo Loading executable program....
rename uefa8meg.8mb uefa8meg.exe >> NUL:
uefa8meg.exe

:Exit
set dos4gvm=







