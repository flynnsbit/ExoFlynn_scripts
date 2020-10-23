@ECHO OFF
:NORMAL
ECHO please insert volume to be formatted into drive A: and press any key...
ECHO [CTRL-C] to abort.
format a: /s /u
COPY AUTOEXEC.000 A:AUTOEXEC.BAT
COPY CONFIG.001 A:CONFIG.SYS
ECHO .
ECHO Your boot disk has been prepared, to boot from it press and hold down
ECHO the [CTRL], [ALT] and [DELETE] keys.



