echo off
cls
title 1
goto loopover
:loop
title 0
:loopover
if ERRORLEVEL 15 goto kenoe
if ERRORLEVEL 14 goto slotse
if ERRORLEVEL 13 goto crapse
if ERRORLEVEL 12 goto r&ce 
if ERRORLEVEL 11 goto exit
if ERRORLEVEL 5 goto kenoc
if ERRORLEVEL 4 goto slotsc
if ERRORLEVEL 3 goto crapsc
if ERRORLEVEL 2 goto r&cc
if ERRORLEVEL 1 goto exit
:slotse
slots s e 
goto loop
:r&ce
r&c r 2 e
goto loop
:kenoe
slots k e
goto loop
:crapse
r&c c 2 e
goto loop
:slotsc
slots s c
goto loop
:r&cc
r&c r 2 c
goto loop
:kenoc
slots k c
goto loop
:crapsc
r&c c 2 c
goto loop
:exit
cls
