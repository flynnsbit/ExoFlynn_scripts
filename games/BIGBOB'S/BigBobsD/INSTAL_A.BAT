ECHO OFF
CLS
C:
CD\
MD DRIVEIN 
CD\DRIVEIN 
MD GAM
MD GIF
COPY A:*.*
CD GAM
COPY A:*.TXT
COPY A:*.GAM
CD..
CD GIF
COPY A:*.GIF
COPY A:*.BKD
CD..
DEL BIGBOB.EXE     
DEL INST*.*
CLS
TYPE REP.DOC
DEL REP.DOC
CD\


