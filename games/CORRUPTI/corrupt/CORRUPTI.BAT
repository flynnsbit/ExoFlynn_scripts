echo off
rem
rem Corruption - Copyright (c) 1987 Magnetic Scrolls Ltd.
rem
rem If you find any bugs please send us a letter at:
rem
rem        Magnetic Scrolls,
rem        1 Chapel Court,
rem        LONDON SE1 1HH.
rem
if %1_==/4_ goto t40
if %1_==/g_ goto ega
if %1_==/G_ goto ega
docorr a:\ /t
goto fin
:t40
docorr a:\ 40 /t
goto fin
:ega
if %2_==/n_ goto no
if %2_==/N_ goto no
docorr a:\disk1.pix a:\disk2.pix m/g
goto fin
:no
docorr a:\disk1.pix a:\disk2.pix /g
:fin

