@Echo off
cls
Echo.
Echo                   Screamer 2 Patch Installation (v1.11)
Echo.  

rem -------- Check parameters ---------
if "%1" == "" goto error1
if "%2" == "" goto error1
rem -----------------------------------

rem --- Check if directory exists -----
if not exist %1:\%2\screamer.cfg goto error2
rem -----------------------------------


rem -- Normal or Network install ? ----
Echo You are now patching:
Echo.
Echo The Normal Installation of Screamer 2   
Echo.
: 
Echo.
Echo.
rem -----------------------------------

rem --- Normal procedure --------------
Echo.
Echo.
Echo.
Echo Please wait ........
copy s2_*.exe %1:\%2 > nul
copy setupn.exe %1:\%2 > nul
%1:
cd \%2
attrib start*.exe -r > nul
if not exist startl.exe goto jump1
del startl.exe
s2_256l.exe > nul
:jump1
if not exist starth.exe goto jump2
del starth.exe
s2_256h.exe > nul
:jump2
if not exist start65l.exe goto jump3
del start65l.exe
s2_65kl.exe > nul
:jump3
if not exist start65h.exe goto jump4
del start65h.exe
s2_65kh.exe > nul
:jump4
del s2_*.exe
del setup.exe
setupn.exe > nul
del setupn.exe > nul
cls
goto installed
rem -----------------------------------


:installed
Echo. 
Echo Patch Installed
Echo If you re-install Screamer 2, please re-install the patch.
goto end

:error1
cls
echo Usage: S2PATCH drive s2dir
echo where drive is the drive on which Screamer 2 is installed
echo and s2dir is the Screamer 2 directory.
echo Example: S2PATCH C S2 
goto end

:error2
cls
echo The Screamer 2 directory specified (%1:\%2) could not
echo be found or the installation is not complete.
echo Please check the specified path. If the path is correct
echo you should re-install Screamer 2.
goto end

:end
