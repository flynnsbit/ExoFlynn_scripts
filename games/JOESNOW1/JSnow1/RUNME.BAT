echo off
cls
echo -----Joe Snow Installation-----
echo This will install all the Joe Snow adventures in correct directories
echo in this current directory. 
pause

cls
echo -----Installing Joe Snow 1-----
md joe1
pkunzip joe1 joe1
cls
echo -----Installing Joe Snow 2-----
md joe2
pkunzip joe2 joe2
cls
echo -----Installing Joe Snow 3-----
md joe3
pkunzip joe3 joe3
cls
echo -----Installing Joe Snow 4-----
md joe4
pkunzip joe4 joe4

cls
echo -----Viewing documentation-----
type joesnow.doc | more
pause

cls
echo -----Completed-----
echo Call 508-234-5777 Nuclear Meltdown BBS for help with any problems
echo you may have with Joe Snow.
echo -----Running Ad for Nuclear Meltdown-----
pause

nmintro1
pause
cls
echo -----Now to play the game-----
echo To play the games, type JOE then the number of the game of which you
echo want to play --to play JS1, type JOE1 then [enter]
pause
