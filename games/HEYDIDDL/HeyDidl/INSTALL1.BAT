REM INSTALL1: installs IBM DOS on your Spinnaker disk using one drive.
REM   Hereafter, insert your Spinnaker diskette in response to prompts
PAUSE for drive A, and DOS diskette in response to prompts for drive B
B:
SYS A:
A:
COPY B:COMMAND.COM A:
COPY B:BASICA.COM A:
