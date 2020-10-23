echo off
rem
rem Fish! - Copyright (c) 1988 Magnetic Scrolls Ltd.
rem
rem If you find any bugs please send us a letter at:
rem
rem        Magnetic Scrolls,
rem        1 Chapel Court,
rem        LONDON SE1 1HH.
rem
rem
rem

if %1_==/?_ goto :help


rem load up the crack TSR 1st
fishc
rem
rem


if %1_==_ goto :default
if %1_==/4_ goto :t40
if %1_==/8_ goto :t80
if %1_==/n_ goto :nomouse



:t40
dofish .\ 40 /t

goto :end

:nomouse
dofish .\DISK1.PIX .\DISK2.PIX /N
goto :end

:t80
dofish .\  80 /t
goto :end


:help
echo.
echo Fish! options:
echo.
echo fish        Graphics version with mouse 
echo fish /n     Graphics version no mouse
echo fish /8     80 column text only
echo fish /4     40 column text only
goto fin

:default
@dofish .\DISK1.PIX .\DISK2.PIX M/G
goto fin

if %1_==/4_ goto t40
if %1_==/g_ goto ega
if %1_==/G_ goto ega
dofish .\ /t
goto fin

:t40
dofish .\ 40 /t
goto fin

:ega
if %2_==/n_ goto no
if %2_==/N_ goto no
dofish .\disk1.pix .\disk2.pix m/g
goto fin

:no
dofish .\disk1.pix .\disk2.pix /g
:fin

