@Echo off
if not exist sbfmdrv.com goto try2
sbfmdrv.com
goto load_sb
:try2
if not exist \sbfmdrv.com goto try3
\sbfmdrv.com
goto load_sb
:try3
if not exist \sb\sbfmdrv.com goto try4
\sb\sbfmdrv.com
goto load_sb
:try4
if not exist \sbpro\sbfmdrv.com goto load_sb
\sbpro\sbfmdrv.com
goto load_sb
:no_hh
echo 'SPELLBOU.EXE' is not in the current directory so cannot load it.
goto end
:load_sb
if not exist spellbou.exe goto no_hh
intro
spellbou
:end
