cls
rem *********************************
rem *   BANTAM disk in drive A:,    *
rem *   DOS disk in drive B: .      *
rem *********************************
pause
b:
b:sys a:
copy b:command.com a:
copy b:mode.* a:
a:
autoexec
