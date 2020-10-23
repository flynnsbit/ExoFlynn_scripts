@echo off
       if "%1" == "" goto ERR1
       if "%2" == "" goto ERR1
       if exist %2 goto CONT1
       md %2
:CONT1
       cd %2
       if exist ubook\nul goto CONT2
       md ubook
:CONT2
       if exist prbook\nul goto CONT3
       md prbook
:CONT3
       COPY %1\MCPRO.COM
       copy %1\mcpro.exe
       copy %1\???dta.m35
       copy %1\*.t35 prbook
       copy %1\prbook.m35 prbook
       copy %1\m35key.00? prbook
       copy %1\m35key.00? prbook
       echo ÿ
       echo   --  Installation complete  --
       echo  -- Type MCPRO to play chess. --
       echo   -- Brought to you from ITU --
       goto END
:ERR1
       echo Usage: SETUP <directory files in now> <drive letter to install to>
       echo (ex- SETUP c:\chess c:)
       goto END
:ERR2
       echo You did something wrong..

:END
