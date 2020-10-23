REM ** INSTRUCTIONS FOR MAKING BACKUP DISKETTE **
REM For 2 disk drives:
REM      1. Put your blank diskette in drive B and press any key
REM For 1 disk drive:
REM      1. Press any key and switch diskettes when prompted
REM      2. REMEMBER that drive A refers to your original STAR FLEET I
REM         diskette, and drive B is your backup copy
pause
COPY A:*.* B:
ERASE B:BACKUP.BAT
ERASE B:SETUP.BAT
REM BACKUP COMPLETE
