echo off
cls
if %0%1 == press goto skip
if %1 == demo goto play
:skip
psi_pyli
:play
psi_pylp
goto play
