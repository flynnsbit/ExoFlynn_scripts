:start
c2cdtool quickfades firsttime
goto check

:startagain
c2cdtool quickfades startagain
goto check


:tut20
c2cdtool quickfades tutplayed tut20
goto check

:tut25
c2cdtool quickfades played tut25
goto check

:tut34
c2cdtool quickfades played tut34
goto check

:tut43
c2cdtool quickfades played tut43
goto check

:tut47
c2cdtool quickfades played tut47
goto check

:tut51
c2cdtool quickfades played tut51
goto check

:notdone
c2cdtool quickfades played
goto check

:check
if errorlevel 51 goto tut51
if errorlevel 47 goto tut47
if errorlevel 43 goto tut43
if errorlevel 34 goto tut34
if errorlevel 25 goto tut25
if errorlevel 20 goto tut20
if errorlevel 13 goto notdone
if errorlevel 12 goto startagain

exit