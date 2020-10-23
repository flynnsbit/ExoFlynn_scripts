@echo off
fonthe
cls
echo .
echo .
echo        š™‡Ž  -  ‰˜…š‘‰Ž„ ˜…‰‚„ ™…ˆ-™…ˆ
echo                    :š…‰…˜™”€„ Ž š‡€ ˜‡
echo .
echo                          1 '‘Ž …—‡™Ž .1
echo                          2 '‘Ž …—‡™Ž .2
echo                          3 '‘Ž …—‡™Ž .3
echo                                 „€‰–‰ .4
echo .
choice /c:1234 /n
if ERRORLEVEL 4 goto END
if ERRORLEVEL 3 goto THREE
if ERRORLEVEL 2 goto TWO
if ERRORLEVEL 1 goto ONE

:ONE
cd\
cd e1
tt_e1h 1
cd\
cd menu
main

:TWO
cd\
cd e2
tt_e2h 3
cd\
cd menu
main

:THREE
cd\
cd e3
tt_e3h 5
cd\
cd menu
main

:END
exit