::::::::::::::::::::::::::::::::::::::::::
::::::::: Starlord Boot Disk Maker :::::::
::::::::::::::::::::::::::::::::::::::::::
@echo off
:::::::::::::::::::::::::::::::::::::::::::
:OkContinue
echo 
echo ======================================
echo You are about to format a floppy disk
echo in drive A !  Make sure this is a spare
echo 720k disk and not one of your original 
echo Starlord disks. 
echo ======================================
:::::::::::::::::::::::::::::::::::::::::::
if not exist c:\dos\format.exe goto FSK
c:\dos\format A: /V:StarBoot /s /u /f:720
if errorlevel 5 goto FormatError
if errorlevel 4 c:\dos\format A: /V:StarlordBoot /s /u /F:720
if errorlevel 3 goto FormatError
goto OKformat
:::::::::::::::::::::::::::::::::::::::::::
:FSK
format A: /V:StarlordBoot /s /u /f:720 
if errorlevel 5 goto FormatError
if errorlevel 4 format A: /V:StarlordBoot /s /u /F:720
if errorlevel 3 goto FormatError
:::::::::::::::::::::::::::::::::::::::::::
:OkFormat
echo Creating Startup Files..
echo @echo off > A:\autoexec.bat
echo @echo STARLORD Boot Disk >> A:\autoexec.bat
echo @echo -------------------------- >> A:\autoexec.bat
echo PROMPT=$p$g>> A:\autoexec.bat
PATH >> A:\autoexec.bat
echo DEVICE=C:\DOS\HIMEM.SYS     >  A:\config.sys
echo DOS=HIGH,UMB                >> A:\config.sys
echo BUFFERS=20                  >> A:\config.sys
echo FILES=10                    >> A:\config.sys
:::::::::::::::::::::::::::::::::::::::::::
:Mouse
if not exist c:\dos\find.exe goto Mouse2
type c:\config.sys|c:\dos\find/i "mouse"
type c:\config.sys|c:\dos\find/i "mouse" >> A:\config.sys
type c:\autoexec.bat|c:\dos\find/i "mouse"
type c:\autoexec.bat|c:\dos\find/i "mouse" >> A:\autoexec.bat
goto OkBootMade
:::::::::::::::::::::::::::::::::::::::::::
:Mouse2
type c:\config.sys|find/i "mouse"
type c:\config.sys|find/i "mouse" >> A:\config.sys
type c:\autoexec.bat|find/i "mouse"
type c:\autoexec.bat|find/i "mouse" >> A:\autoexec.bat
:::::::::::::::::::::::::::::::::::::::::::
:OkBootMade
echo Copied from your existing system files
:Now get the directory that bootmake has
:been run from to determine auto-boot info.
cd1
type t.1 >> A:\autoexec.bat
echo @echo Loading Starlord .. please wait >> A:\autoexec.bat
echo Starlord >> A:\autoexec.bat
del t.1
:::::::::::::::::::::::::::::::::::::::::::
echo.
echo Starlord Boot Disk has been created
echo Press CTRL ALT DEL to reboot machine...
goto exit
:::::::::::::::::::::::::::::::::::::::::::
:FormatError
echo Boot Disk has not been made..
:::::::::::::::::::::::::::::::::::::::::::
:exit

