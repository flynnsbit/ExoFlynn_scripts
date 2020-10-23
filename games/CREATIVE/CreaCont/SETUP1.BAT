cls
rem *********************************
rem *  When computer asks for disk  *
rem *  in drive A:, insert your     *
rem *  BANTAM disk.                 *
rem *  When computer asks for disk  *
rem *  in drive B:, insert your     *
rem *  DOS disk.                    *
rem *********************************
pause
b:
b:sys a:
copy b:command.com a:
copy b:mode.* a:
a:
autoexec
