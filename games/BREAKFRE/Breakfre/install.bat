@echo off

rem BreakFree Install v1.0
rem Copyright 1995, Software Storm, Inc. All rights reserved.

if "%1" == "" goto USAGE_SCREEN
if "%2" == "" goto USAGE_SCREEN

rem Test the source for validity
if not exist %1BRKFREE.EXE goto ERROR_SOURCE_DIR

rem Test the destination for validity
if exist %2\NUL goto COPY_FILES

md %2
if not exist %2\NUL goto ERROR_DEST_DIR

:COPY_FILES

rem This is for compatibility with MS-DOS v6.x
if "%COPYCMD%" == "" goto NO_COPY_VAR
set OLD_COPY=%COPYCMD%

:NO_COPY_VAR
set COPYCMD=/Y

echo Copying %1brkfree.exe to %2
copy %1brkfree.exe %2

echo Copying %1brkfree.mlb to %2
copy %1brkfree.mlb %2

echo Copying %1help.txt to %2
copy %1help.txt %2

echo Copying %1order.frm to %2
copy %1order.frm %2

echo Copying %1readme.txt to %2
copy %1readme.txt %2

echo Copying %1qckstart.txt to %2
copy %1qckstart.txt %2

echo Copying %1gedit.exe to %2
copy %1gedit.exe %2

echo Copying %1gedit.txt to %2
copy %1gedit.txt %2

echo.
echo Installation is complete...
echo.
echo Change to %2 then...
echo.
echo Type BRKFREE to run.
echo.

rem This is for compatibility with MS-DOS v6.x
if "%OLD_COPY%" == "" goto NO_OLD_COPY

set COPYCMD=%OLD_COPY%
set OLD_COPY=

goto COPY_DONE

:NO_OLD_COPY
set COPYCMD=

:COPY_DONE
goto DONE

:ERROR_SOURCE_DIR
echo.
echo Invalid source drive %1.
echo Please check your drive and try again.
goto USAGE_SCREEN

goto DONE

:ERROR_DEST_DIR
echo.
echo Could not create destination directory %2.
echo Please check your drive and try again.
goto USAGE_SCREEN

goto DONE

:USAGE_SCREEN
echo.
echo ---) BreakFree Install v1.0 (---
echo      Copyright 1995, Software Storm, Inc. All rights reserved.
echo.
echo Usage:
echo    INSTALL SourceDrive DestinationPath
echo.
echo Example:
echo    INSTALL A: C:\BRKFREE
echo.

:DONE
