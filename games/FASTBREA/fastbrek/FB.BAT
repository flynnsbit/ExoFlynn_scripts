echo off
rem Batch file for FastBreak

ksel
if ERRORLEVEL 4 FB-T
if ERRORLEVEL 3 FB-E
if ERRORLEVEL 2 FB-C
if ERRORLEVEL 1 FB-C 1

