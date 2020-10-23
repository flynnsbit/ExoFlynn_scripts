@echo off
if %1!==! goto needparm
if not exist %1*.* goto needparm

pkunzip -d %1
goto end

:needparm
echo.
echo  UNZIPLEG will restore the league files backed up with the ZIPLEG utility, 
echo  using PKWare's PKUNZIP file decompression software.  You must have the 
echo  PKUNZIP (version 2.0 or higher) program in your computer's file search path.
echo.
echo  The proper syntax is:
echo.
echo     UNZIPLEG ZIPFILE
echo.
echo     ZIPFILE is the name of the ZIP file you wish to restore. 
echo.
echo  Example:  UNZIPLEG A:NFLBAK
echo.
echo  will unzip league files contained in NFLBAK.ZIP from drive A: to your game
echo  directory.
echo.
echo  use ZIPLEG to zip-up the league files.
echo.
:end
