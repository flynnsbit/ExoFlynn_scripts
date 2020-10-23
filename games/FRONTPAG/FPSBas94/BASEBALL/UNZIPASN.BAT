@echo off
if "%1"=="" goto needparm

pkunzip -d %1
goto end

:needparm
echo  This batch file will restore the association files backed up with
echo  the ZIPASN batch file, using PKWare's PKUNZIP file decompression
echo  software.  You must have the PKUNZIP program in your computer's
echo  file search path.
echo.
echo  The proper syntax is:
echo     UNZIPASN ZIPFILE
echo.
echo  ZIPFILE is the name of the ZIP file you wish to restore. If the
echo  file is on a floppy disk, you must specify the drive letter and a
echo  colon (Ex. B:) for the batch file to find tha backup ZIP file.
echo.
echo  ZIPLEG will back-up the association files for you.
:end
