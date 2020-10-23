if not exist f30 goto Drive2
goto aok
:Drive2
echo Insert your question disk in drive A now.
pause
if not exist a:\f15 goto Drive2
copy a:*.*
if not exist %1\tp\f30 goto NoGood
if not exist %1\tp\tpptr goto NoGood
if not exist %1\tp\tp.exe goto NoGood
echo
:aok
echo Your install is complete!
goto Fini

:NoGood
echo ERROR:  The program did not install properly. Check to make sure you
echo         have space available on your hard disk; delete files if
echo         neccessary and try again.
:Fini
echo
