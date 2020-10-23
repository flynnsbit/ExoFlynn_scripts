echo off
cls
if not %1x==sx goto rungame
:doinstall
install
if errorlevel 1 goto done
:rungame
if %1x==tx goto skip
ttc
if errorlevel 1 goto doinstall
goto done
:skip
ttc -s
if errorlevel 1 goto doinstall
:done

