@ECHO OFF
ECHO *******************************
ECHO * This program will restore a *
ECHO * backup saved game if your   *
ECHO * main save game file has     *
ECHO * been corrupted.             *
ECHO *******************************
ECHO * It will copy BACKUP.SAV to  *
ECHO * MAIN.SAV                    *
ECHO *******************************
ECHO Press CTRL-BREAK now if you do
ECHO not want to do this.  Else,   
PAUSE
COPY BACKUP.SAV TO MAIN.SAV
