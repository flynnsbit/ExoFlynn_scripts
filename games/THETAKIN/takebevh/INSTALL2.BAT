:BAD2
CLS
ECHO                          * Please Insert Disk #2 * 
Pause
IF EXIST A:VBH.CMP GOTO OK2
GOTO BAD2
:OK2
COPY a:*.*
:BAD3
CLS
ECHO                          * Please Insert Disk #3 *
Pause
IF EXIST A:VLG.CMP GOTO OK3
GOTO BAD3
:OK3
COPY a:*.*
CLS
@BH
ECHO                     * Thank You For Choosing Capstone *
