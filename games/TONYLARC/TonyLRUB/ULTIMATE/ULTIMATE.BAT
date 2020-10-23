echo off
frontend
loaddriv

:start
main
if not exist flag.tmp goto end
bb
goto :start
:end
ibmsnd U


