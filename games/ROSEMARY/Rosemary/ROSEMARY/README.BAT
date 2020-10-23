@ECHO OFF
cls
ECHO    Changes required in the config.sys file before running Rosemary
ECHO _____________________________________________________________________
ECHO.  
ECHO Files must be set to at least 50. Change all FILES=XX to FILES=50.
ECHO.  
ECHO Any memory manager, such as HIMEM.SYS, must support at least 64 handles.
ECHO Add /NUMHANDLES=64 to all the HIMEM.SYS drivers.
ECHO.  
ECHO If you are using another memory manager, see the manual for information
ECHO on setting the number of handles available.
ECHO.  

pause
cls

ECHO                           MEMORY USAGE
ECHO _____________________________________________________________________
ECHO.  
ECHO The fastest memory to use is Expanded. Third-party memory
ECHO managers, such as QEMM386, automatically supply Expanded memory from the
ECHO memory pool. DOS 6 will do the same if you have `EMM386.EXE RAM' loaded.
ECHO DOS 5 requires you to reserve a fixed amount of Expanded memory.
ECHO Rosemary will use Expanded memory up to 1.7 meg.
ECHO.
ECHO The second fastest memory to use is Extended memory. If you 
ECHO are using DOS's HIMEM.SYS as the memory manager then you will need
ECHO to add /numhandles=64 to your config.sys. This will be done during
ECHO the install procedure if you select `Modify CONFIG.SYS.' If you
ECHO change your config.sys file at a later date you can check the line
ECHO with HIMEM.SYS in it and add the switch if it is not there.
ECHO For example, edit the line to read:
ECHO.
ECHO DEVICE=c:\dos\HIMEM.SYS /numhandles=64
ECHO.
pause
cls
ECHO If you have a limited amount of free memory (for example, your
ECHO machine has only 2 Megabytes of memory with 1 Meg free), Rosemary
ECHO would be able to use the 1 Meg if you set it up as Expanded
ECHO memory. See your DOS or memory manager manual for information
ECHO on setting up Expanded memory.
ECHO.
pause
cls
ECHO.
ECHO Rosemary uses the available memory as follows:
ECHO.
ECHO If Expanded memory is available and greater than 1.5 megabytes, 
ECHO Rosemary uses all Expanded memory.
ECHO.
ECHO If Expanded memory is available and less than 1.5 megabytes, and Extended
ECHO memory is available, and Expanded plus Extended memory is greater than 
ECHO 1.5 megabytes, Rosemary uses Expanded first and then Extended.
ECHO.
ECHO If Expanded memory is not available and Extended memory is greater than
ECHO 1.5 megabytes, Rosemary uses Extended memory.
ECHO.
ECHO If Expanded memory is available and less than 1.5 megabytes, and Extended
ECHO memory is not available, Rosemary uses Expanded memory first and then
ECHO uses disk-based memory.
ECHO.
ECHO If Expanded memory is not available and Extended memory is not available
ECHO or less than 1.5 megabytes, Rosemary uses disk-based memory.
ECHO.
pause
cls


ECHO                Common INSTALL Questions and Answers
ECHO _____________________________________________________________________
ECHO.  

ECHO Q: I have a SVGA video adapter, but the install program does not recognize
ECHO    my adapter as SVGA.
ECHO.

ECHO A: Install will recognize some of the more popular video adapters, and
ECHO    provides direct support for these adapters. However, some adapters CANNOT 
ECHO    be used in SVGA mode without the addition of a VESA driver. Check your
ECHO    video adapter manual and software for a VESA driver. If a driver is not
ECHO    included, check with your video card manufacturer. 
ECHO.
ECHO    The VESA driver must be loaded before running the installation program
ECHO    and before running Rosemary. 
ECHO.
ECHO Q: I have a sound card, but the install program does not recognize it.
ECHO.
ECHO A: Rosemary supports only the Sound Blaster and 100%% compatible sound
ECHO    cards. It has been tested and is compatible with the F/X Sound and
ECHO    Pro Audio Spectrum 16 cards. Check with your sound board manufacturer
ECHO    about compatibility with the Sound Blaster standard.
ECHO.
pause
cls

ECHO                Common ROSEMARY Questions and Answers
ECHO _____________________________________________________________________
ECHO.  
ECHO Q: I cannot get Rosemary to run from Windows (or it runs very slow).
ECHO.
ECHO A: WE HIGHLY RECOMMEND THAT YOU DO NOT RUN THIS 
ECHO    PROGRAM FROM WINDOWS.
ECHO.
ECHO Q: I have a Sound Blaster card, and I can hear the voices OK, but I
ECHO    do not hear any music (or, I only hear music in the individual rooms).
ECHO.
ECHO A: The music files are larger than the voice files and require more
ECHO    conventional memory to play. The theme music is the largest file.
ECHO    You may have enough memory to play the room music but not the 
ECHO    theme. Free up more conventional memory by removing TSRs or loading
ECHO    them high. See your operating system manual for more information.
ECHO    The minimum required free memory to play all the music files
ECHO    is 573K.
ECHO.
pause
cls

ECHO Q: When I try to run ROSE.EXE, I get a message that says "Out of
ECHO    memory. Unable to run program." What should I do?
ECHO.
ECHO A: Rosemary uses disk space as memory swap area. You must have at least 
ECHO    1.5 Megabytes free on your hard drive for Rosemary to operate 
ECHO    properly. Delete unnecessary files from other directories until
ECHO    you have at least 1.5 Megabytes of free disk space available, 
ECHO    then try running Rosemary again.
ECHO.
pause
cls







































