echo off
cls
echo                    ------Krusty's Super Funhouse-------
echo                    ----                            ----
echo                    ---- Sound card selection menu  ----
echo                    ----                            ----
echo                    ---- 1) no sound card           ----
echo                    ----                            ----
echo                    ---- 2) Roland                  ----
echo                    ----                            ----
echo                    ---- 3) Soundblaster/Pro/Adlib  ----
echo                    ----                            ----
echo                    ------------------------------------
options
if errorlevel 3 goto 3
if errorlevel 2 goto 2
if errorlevel 1 goto 1
goto 4
:1
execs\td
goto 4
:2
execs\tr
goto 4
:3
execs\ts
:4
