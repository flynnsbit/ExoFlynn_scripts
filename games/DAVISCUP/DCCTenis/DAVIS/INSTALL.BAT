@echo off
\pcx\video
cls
\pcx\inst

REM SETSOUND CALL IN HERE
if not exist davis.ini goto end
if exist davis.ini setsound
cls
waitkey
:end
if exist c:\abcdz892.tmp del c:\abcdz892.tmp
