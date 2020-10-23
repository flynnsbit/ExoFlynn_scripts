echo off
if %1 == pac-em pac-em.exe
if %1 == frog   frog.exe
if %1 == red    red.exe
if %1 == tank   tank.exe
if %1 == dos    goto END
menu
:END
