echo off
if %1 == pc       swc.exe
if %1 == hercules swh.exe
if %1 == at&t     swatt.exe
if %1 == pcjr     swjr.exe
if %1 == meteor   meteor.exe
if %1 == moon     moon.exe
if %1 == zombies  zombies.exe
if %1 == initial  initial.exe
if %1 == dos      goto END
menu
:END
