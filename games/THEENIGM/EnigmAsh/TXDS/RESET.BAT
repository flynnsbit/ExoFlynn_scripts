@echo off
cls
echo This batch file resets Ashrella for you.  If you do NOT wish to reset,
echo please hold down [ctrl] and press C now and terminate the batch file.
pause > nul
echo Are you sure?  If not, press [ctrl-c] now!
pause > nul
del x-engine.pc
del under.cht
del gd.cht
del etch.cht
del bridge.cht
del rock.cht
del jail.cht
del k-inn.cht

echo Game now reset.
