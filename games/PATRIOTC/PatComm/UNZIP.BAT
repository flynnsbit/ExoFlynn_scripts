echo  off
rem   Copyright (c) 1993 - Timber Valley Software
rem
rem   This DOS batch file will unzip Patriot Command files
rem   and then remove unneeded files such as the
rem   zipped files and the unzip utility program.
rem
rem
rem   Unzipping files
pkunzip -o *.zip
rem
rem
rem   Deleting unneeded files
del *.zip
del pkunzip.exe
