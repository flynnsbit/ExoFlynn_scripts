@ECHO OFF >nul
IF EXIST DOS4GW.EXE GOTO GOOD

:ERROR

ECHO The Privateer 2: The Darkening patch files must be
echo located in a directory where Privateer 2 is already
echo installed.  Please copy all the appropriate files
echo to the correct directory, then re-run PATCH.
GOTO END

:GOOD
OSI.EXE
echo.
echo.
echo.
echo The Privateer 2: The Darkening patch was successful.
GOTO END

:END
echo.
ECHO HAPPY GAMING!