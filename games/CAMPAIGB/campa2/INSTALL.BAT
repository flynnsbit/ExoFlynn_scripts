@echo off
if "%1" == "" goto no_dir
md %1
xcopy /s *.* %1
if errorlevel 1 goto error
goto done
:no_dir
echo Please give a directory to install Campaign II eg.
echo.
echo INSTALL C:\CAMP2
echo.
goto done
:error
echo ERROR copying files. Please make sure the directory can be created
echo and that there is enough disk space to copy the files
:done
