path c:\386max;c:\dos;
prompt=$p$g
rem 386MAX added /T- to my favourite disk cache line...
@c:\winmast\superpck /ConfigFile=c:\winmast\pckwik.ini /T-
rem 
rem these exact numbers will probably be different on your machine
rem but that is 386MAX's job to get right
rem 
rem Load doskey high
@C:\386MAX\386load size=6400 prgreg=2 flexframe prog=doskey
rem
rem Persuade the keys on the keyboard to match the symbols printed on them!
@C:\386MAX\386load size=15904 flexframe prog=keyb uk,,c:\dos\keyboard.sys
