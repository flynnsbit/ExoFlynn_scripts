@echo off
cls
rem
rem
rem   * * * * * * * * * * * * * * * * * * * *
rem   *                                     *
rem   *  Legends of Valour - The Dawning    *
rem   *                                     *
rem   * * * * * * * * * * * * * * * * * * * *
rem
rem

if exist gtquit goto delquit
if exist gtgame goto delgame
if exist gtdes goto deldes
if exist gttitle goto retitle
if exist gtexp goto delexp
goto titleseq
:delquit
erase gtquit
goto  titleseq
:delgame
erase gtgame
goto  titleseq
:deldes
erase gtdes
goto titleseq
:delexp
erase gtexp
goto titleseq

:retitle
erase gttitle

rem      * * *           title sequence displayer * * *
:titleseq
title
if exist gtquit goto quit
goto game1

rem      * * *                        game module * * *
:game
erase gtgame
:game1
run
if exist gtquit goto quit
if exist gtdes goto des
if exist gttitle goto retitle
if exist gtexp goto exputil
goto batchend

rem      * * *          character designer module * * *
:des
erase gtdes
chardes
rem if exist gtquit goto quit
rem if exist gtgame goto game
rem goto batchend
goto game1

rem      * * *          expansion                 * * *
:exputil
call lovplus
erase gtexp
goto game1


goto batchend
:quit
erase gtquit

:batchend
