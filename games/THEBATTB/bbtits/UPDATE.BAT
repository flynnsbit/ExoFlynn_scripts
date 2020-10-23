REM   This procedure requires a
REM   DOS diskette with the
REM   following programs:
REM	 SYS.COM
REM	 BASICA.COM
REM	 COMMAND.COM
REM
REM   If your system disk does not
REM   have these programs, press
REM   Ctrl-Break, stop this program,
REM   and retry with your PC-DOS
REM   diskette.
pause
a:
REM   If you have a single drive,
REM   insert your DOS diskette
REM   when prompted for drive A
REM   and game diskette when prompted
REM   for drive b.
REM
REM   If you have two drives, insert
REM   DOS in drive A and game
REM   diskette in drive B
pause
a:sys b:
copy a:command.com b:
copy a:basica.com b:
type b:message
