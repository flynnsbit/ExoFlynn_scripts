@echo off
if exist madden.cfg goto frontend
setup

:frontend
echo Madden NFL (tm) '97 v1.0
echo DOS/4GW Professional Protected Mode Run-time  Version 1.97
echo Copyright (c) Rational Systems, Inc. 1990-1994
  
:newscr
cd screens
screens
cd ..
if errorlevel 11 if not errorlevel 12 goto mad_r_l
if errorlevel 10 if not errorlevel 11 goto mad_r
if errorlevel 9 if not errorlevel 10 goto mad_l
if errorlevel 8 if not errorlevel 9 goto mad
goto end

:contscr
cd screens
screens helloagain
cd ..
if errorlevel 11 if not errorlevel 12 goto mad_r_l
if errorlevel 10 if not errorlevel 11 goto mad_r
if errorlevel 9 if not errorlevel 10 goto mad_l
if errorlevel 8 if not errorlevel 9 goto mad
goto end

:mad
cd action
moe
cd ..
if errorlevel 8 if not errorlevel 9 goto contscr
goto end

:mad_l
cd action
moe load
cd ..
if errorlevel 8 if not errorlevel 9 goto contscr
goto end

:mad_r
cd action
moe remote
cd ..
if errorlevel 8 if not errorlevel 9 goto contscr
goto end

:mad_r_l
cd action
moe remote load
cd ..
if errorlevel 8 if not errorlevel 9 goto contscr
goto end

:end
mode co80
