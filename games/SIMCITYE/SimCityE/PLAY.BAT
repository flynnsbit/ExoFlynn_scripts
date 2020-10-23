@echo off
rem ****************************************************
rem *                                                  *
rem * This file to be called in order to play SimCity  *
rem * and make sure the VESA VBE drivers are loaded.   *
rem *                                                  *
rem ****************************************************
tryvesa
if not errorlevel 1 goto proceed2
echo No VESA reported.
echo Now trying with UNIVESA VBE driver.
univesa
tryvesa
if not errorlevel 1 goto proceed1
echo Unable to load VESA VBE Driver
echo SimCity CD-ROM requires a VESA-compatible video driver.
echo Please refer to the original installation diskettes for
echo your video card and install the appropriate VESA driver.
goto :finish
:proceed1
echo Success!
:proceed2
sccd %1 %2 %3
:finish
