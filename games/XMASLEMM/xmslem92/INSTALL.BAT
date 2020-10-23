@echo off
rem PC-Lemmings Hard disk install batch file
rem usage -	install [directory to install to]
rem example - install c:\games, to install in a directory c:\games\lemmings

if %1s == s goto fail
if %2s == s goto fail
md %2\lemmings
copy %1\*.* %2\lemmings
goto finish

:fail
echo usage :- install [drive to install from] [directory to install to]
echo example :- 'install a: c:\games', to install from drive a:
echo            to a directory c:\games\lemmings

:finish
