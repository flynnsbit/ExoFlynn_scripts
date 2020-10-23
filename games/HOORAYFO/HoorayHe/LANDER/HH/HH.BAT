Echo off
if not exist sbfmdrv.com goto try2
sbfmdrv.com
goto load_hh
:try2
if not exist \sbfmdrv.com goto try3
\sbfmdrv.com
goto load_hh
:try3
if not exist \sb\sbfmdrv.com goto try4
\sb\sbfmdrv.com
goto load_hh
:try4
if not exist \sbpro\sbfmdrv.com goto load_hh
\sbpro\sbfmdrv.com
goto load_hh
:no_hh
echo 'HHPROG.EXE' is not in the current directory so cannot load it.
goto end
:load_hh
cls
Echo Loading, please wait ...
if not exist hhprog.exe goto no_hh
lander
if errorlevel 1 goto end
hhprog
:end
