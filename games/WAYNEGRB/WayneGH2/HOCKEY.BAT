@echo off
if "%1" == "" goto DoIntro
if %1 == -c goto SkipIntro
if %1 == -t goto SkipIntro
:not1
if "%2" == "" goto DoIntro
if %2 == -c goto SkipIntro
if %2 == -t goto SkipIntro
:not2
if "%3" == "" goto DoIntro
if %3 == -c goto SkipIntro
if %3 == -t goto SkipIntro
:DoIntro
intro
:SkipIntro
hky_k %1 %2 %3
