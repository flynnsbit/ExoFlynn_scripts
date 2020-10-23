@echo off
echo //
echo // Patching Trump Castle 3 Upgrade
echo //
pause
if not exist tc3.exe goto wrongdir
echo //
echo // One moment please...
if exist tc3upd.zip pkunzip >nul -o tc3upd
echo //
if not exist patch.exe goto wrongdir
if not exist tc31-2.rtp goto wrongdir
patch tc31-2
if errorlevel 1 goto badpatch
goto success
:wrongdir
echo //
echo // Required file not found or wrong directory.
echo //
echo // Be sure to copy the tc3UPD.ZIP file into the tc3 directory before
echo // running this patch.
echo //
:badpatch
echo // An error occured during patching.  The files have been restored
echo // to their original state prior to patching.
echo //
goto done
:success
echo // Patch completed successfully!
:done
