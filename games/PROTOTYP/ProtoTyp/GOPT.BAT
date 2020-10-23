echo off
if not exist select.exe goto error
vidpop
cls
select
type kill.bat
cls
goto end
:error
cls
echo ÿ
echo You must start the course from disk #1,
echo or copy both diskettes to a hard disk.
echo ÿ
:end
