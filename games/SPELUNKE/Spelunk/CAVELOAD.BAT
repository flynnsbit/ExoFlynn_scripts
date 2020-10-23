echo off
if exist current.cav rename current.cav current.tmp
rename %1 current.cav
cave
rename current.cav %1
if exist current.tmp rename current.tmp current.cav
