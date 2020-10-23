@echo off
cls
echo 
echo Due to the fact that we are using different Music and Sound Drivers
echo we will be able to provide Music for the Gravis UltraSound but not
echo Speech. We suggest that you set up your Gravis in Sound Blaster Mode
echo and then run the Install Program.
echo 
echo Inherit the Earth will not work properly with the Gravis unless you
echo select No Sound and Gravis Music or enable Sound Blaster emulation
echo for the Speech.
echo 
echo Sorry for the Inconvenience.
echo 
cd drivers
loadpats
cd..
