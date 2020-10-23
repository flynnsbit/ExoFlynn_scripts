echo off
if not exist user.$$$ goto fi1
del user.$$$
:fi1
if not exist conti.$$$ goto fi2
del conti.$$$
:fi2
if not exist cricket.cfg goto l1
del cricket.cfg
:l1
BLOCK 2
if errorlevel 1 goto fin
block2
goto l1
:fin