@ECHO OFF
MD C:\EC92 > NUL
COPY *.BAT		C:\EC92 >NUL
COPY FOOTBALL.EXE	C:\EC92 >NUL
COPY TITLE.PK1		C:\EC92 >NUL
COPY PRESENTS.PK1	C:\EC92 >NUL
COPY ?PRITES?.PK1	C:\EC92 >NUL
COPY PLANE?.PK1		C:\EC92 >NUL
COPY HI.PK1		C:\EC92 >NUL
COPY TOP7.PK1		C:\EC92 >NUL
COPY PHOTO.PK1		C:\EC92 >NUL
COPY FRONTEND.PK1	C:\EC92 >NUL
COPY BAND.PK1		C:\EC92 >NUL
COPY BIGBALL.PK1	C:\EC92 >NUL
COPY CHEER.PK1		C:\EC92 >NUL
COPY CROWD.PK1		C:\EC92 >NUL
COPY LOGO.PK1		C:\EC92 >NUL
COPY NEWHIGH.PK1	C:\EC92 >NUL
COPY FLAGS.PK1		C:\EC92 >NUL
COPY ICONFLAG.PK1	C:\EC92 >NUL
COPY ICONS.PK1		C:\EC92 >NUL
COPY RFX.MID		C:\EC92 >NUL
IF EXIST WIN.MID GOTO SINGLE
:DISK2
ECHO - Insert disk 2
PAUSE
IF NOT EXIST WIN.MID GOTO DISK2
:SINGLE
COPY *.MID		C:\EC92 >NUL
COPY PAGE*.PK1		C:\EC92 >NUL
C:
CD \