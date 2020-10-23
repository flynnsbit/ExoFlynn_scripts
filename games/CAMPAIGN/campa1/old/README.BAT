echo off

echo 1 . . English Language
echo 2 . . Deutsche Sprache
echo 3 . . Parlez Francais
echo 4 . . Italiano Text
echo 5 . . Espanol Text

:WAITKEY

getkey

if errorlevel 5 goto SPANISH
if errorlevel 4 goto ITALIAN
if errorlevel 3 goto FRENCH
if errorlevel 2 goto GERMAN
if errorlevel 1 goto ENGLISH

goto WAITKEY

:ENGLISH
type notes.doc|more
goto END

:GERMAN
type cmpaddgr.doc|more
goto END

:FRENCH
type cmpaddfr.doc|more
goto END

:ITALIAN
type cmpaddit.doc|more
goto END

:SPANISH
type cmpaddsp.doc|more

:END
