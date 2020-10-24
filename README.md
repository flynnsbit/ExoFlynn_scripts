
Introduction
============

This is a collection of all 7002 eXoDOS game and program scripts used for launch and configuration.  This repo will be used to update launch and run files for maximum compatibility as games are tested on the MiSTer AO486 Core.

There will be 4 scripts used to update your games collection launchers:

1.  On the AO486 side, a discovery script will be used to identify the games you have installed and extracted in your games folder and create an "UPDATEXO" file to process.  This will build an update request file that will be added to your MiSTerFS Shared folder.

2.  An update / pull request script on the MiSTer side will be created to process the "UPDATEXO" file and pull any new changes to 1_START.BAT, 3_SETUP.BAT, or RUN.BAT for each game. Game pack update will be stored back on the shared folder  This will be a community effort.

3. On the AO486 side, an update script will be used to push any new launch scripts to your games collection and update the existing one.

4. On the AO486 side, a script will be built to build a package to submit a Pull Request for any game changes you have made. Updates to games will be verified and added to this collection.  
