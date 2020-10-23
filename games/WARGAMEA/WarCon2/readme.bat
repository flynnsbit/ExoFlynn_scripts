@echo off
echo ÿTANKS!                                          
echo ÿMay 18 1994
echo ÿ
echo ÿ        This file contains information not available at the
echo ÿtime that the game manual was printed.
echo ÿ
echo ÿ                     COMMAND LINE PARAMETERS
echo ÿ
echo ÿ        TANKS! will accept several command line parameters.
echo ÿOrdinarily you won't have to worry about this, but they can
echo ÿbe handy under certain special circumstances.
echo ÿ
echo ÿ        DEBUG : Enables a special game error checking and
echo ÿdata recording mode that should only be used at SSI's
echo ÿrequest.
echo ÿ
echo ÿ        FM : Forces the game to use FM sounds if your sound
echo ÿcard supports them, even if your sound card normally plays
echo ÿdigitized sounds.  This will free up about 20K of
echo ÿconventional memory for use by TSR's, etc.
echo ÿ
echo ÿ        MONO : Forces monaural sound on stereo capable
echo ÿsound cards.  Use this if you don't care for the stereo
pause
echo ÿeffects.  Other than balancing the sound volume from both
echo ÿspeakers, there is no detrimental effect on sound quality.
echo ÿ
echo ÿ        QUICK : Disables the time delays built into the
echo ÿcombat results reports.  Using this will speed up the game
echo ÿconsiderably, but you will have to check the results of
echo ÿcombat manually by examining the units involved after the
echo ÿcombat.
echo ÿ
echo ÿ        QUIET : Turns off all sound in the game.
echo ÿ
echo ÿ        VANILLAMOUSE : Some obsolete mouse drivers may
echo ÿhave problems with the game.  If you encounter graphics
echo ÿ"glitches" around the edge of the map try using this
echo ÿparameter until you can update your mouse driver software.
echo ÿUsing this parameter fixes the shape of the mouse to an
echo ÿarrowhead and decreases mouse sensitivity in some areas.
echo ÿ
echo ÿ        If you decide to use one or more of these commands,
echo ÿyou just type them after the word TANKS but before you
echo ÿhit the ENTER key.
echo ÿ
echo ÿ        Example: Typing "TANKS FM VANILLAMOUSE"
pause
echo ÿwould start the game with the fixed mouse cursor and fm
echo ÿsounds only.
echo ÿ
echo ÿGRAVIS ULTRASOUND USERS:  In an attempt to support our very
echo ÿimportant Gravis users, we've included Gravis(Soundblaster
echo ÿEmulation Mode) in our sound installer. Unfortunately the
echo ÿemulation is less than perfect and the game music may sound
echo ÿout of tune. The sound effects convert quite nicely but some 
echo ÿusers may notice a slowdown in the way the game runs with 
echo ÿF/X on. SSI is working diligently on ways to provide its
echo ÿGravis customers with quality music and sound effects. 
echo ÿ
echo ÿ                    "RANDOM" ORDERS OF BATTLE
echo ÿClarification:
echo ÿ
echo ÿ        TANKS! automatically creates orders of battle when
echo ÿit makes random scenarios and when you use the random forces
echo ÿbutton in the editor.  These orders of battle aren't really
echo ÿ"random".  They are based on real unit organizations for
echo ÿeach force represented in the game.  Equipment assignments 
echo ÿare heavily influenced by the historical overall mobility of 
echo ÿthe force. Low mobility forces tend to have lots of 
echo ÿdismounted infantry. High mobility forces tend to have lots 
pause
echo ÿof tanks and mechanized support.  If you wish, you can 
echo ÿoverride historical force mobilities with the mobility 
echo ÿbuttons that pop up during random scenario and OOB creation.
echo ÿ
echo ÿ        When you ask the program to create a random
echo ÿscenario, you will be asked to choose tiny, small, medium, 
echo ÿor large forces for each side.  These correspond roughly to 
echo ÿ10, 30, 60, or 90 units per side.  But in order to balance 
echo ÿthe scenario, the force sizes you request may be modified.  
echo ÿThis is particularly likely if you select forces with very
echo ÿdifferent levels of technology or quality.  For example, if 
echo ÿyou request a "tiny" random battle between 1918 Germans and 
echo ÿ1991 Americans, the scenario balancing routine will probably 
echo ÿcreate a very large German force.
echo ÿ
echo ÿ                         COMMAND RULES
echo ÿAddition:
echo ÿ
echo ÿ        Formations with control ratings lower than 7 are
echo ÿmore susceptible to forced "reorganization" (and loss of a 
echo ÿturn) than those with higher control ratings.  This
echo ÿreflects the relative scarcity of communications equipment 
echo ÿand rigidity of command structure in forces with low 
pause
echo ÿcontrol ratings: 1940 French, Italians, Chinese, Iraqis, 
echo ÿpre '67 Soviets, and all 1918 armies.
echo ÿ
echo ÿ                        MOVING YOUR UNITS
echo ÿAddition:
echo ÿ
echo ÿ        Any unit with a non-zero movement rate, which has
echo ÿnot already moved this turn, can always move at least one 
echo ÿhex regardless of movement cost.
echo ÿ
echo ÿ        Unarmed units will not launch close assaults.  In
echo ÿorder to be considered "armed", the unit must have at least 
echo ÿone weapon mounted on its "top" equipment type.  Out of 
echo ÿammo units will be allowed to assault, but their chance of 
echo ÿsuccess is small.
echo ÿ
echo ÿ                          DIRECT FIRE
echo ÿAdditions: 
echo ÿ
echo ÿ        If the target unit is in a fort hex, there is a 
echo ÿ40% chance that any direct fire shot will miss.
echo ÿ
echo ÿ        Parent formation morale and control ratings affect 
pause
echo ÿthe accuracy of a unit's fire.  Units belonging to 
echo ÿformations with poor morale and control ratings will not 
echo ÿhit their targets as often as units belonging to higher 
echo ÿquality formations.
echo ÿ
echo ÿChange: 
echo ÿ
echo ÿ        When firing at a unit composed of an armed
echo ÿtransport and some other type of equipment, the transport
echo ÿwill always be shot at first.  Your units will only fire on
echo ÿunarmed transports if they (the transports) are the top 
echo ÿequipment type in the target unit.
echo ÿ
echo ÿ                         INDIRECT FIRE
echo ÿAddition: 
echo ÿ
echo ÿ        In addition to unspotted intersection, town, and 
echo ÿvillage hexes, you can shoot indirect fire into unspotted 
echo ÿbridge hexes.  A bridge hex is any hex containing a road 
echo ÿand a stream or river.
echo ÿ
echo ÿ                          SMOKE FIRE
echo ÿAddition: 
pause
echo ÿ
echo ÿ        The program won't allow you to order smoke fire 
echo ÿinto a hex that already contains smoke.
echo ÿ
echo ÿ                          AMMUNITION
echo ÿAddition:
echo ÿ
echo ÿ        Most units will eventually run low on ammo if they
echo ÿfire their weapons.  Infantry and artillery units with 
echo ÿtransports (trucks or whatever) will never run low on ammo 
echo ÿas long as the transports are not destroyed.
echo ÿ
echo ÿ               SCENARIO ENVIRONMENTAL EFFECTS
echo ÿAddition:
echo ÿ
echo ÿ        Wind has the following effects:
echo ÿ
echo ÿ        If there is no wind, smoke can be created during
echo ÿcombat and it will tend to linger in the smoked hex for
echo ÿseveral turns.
echo ÿ
echo ÿ        If winds are light, smoke can be created during
echo ÿcombat and it will tend to drift with the wind from turn to
pause
echo ÿturn.
echo ÿ
echo ÿ        If winds are strong, smoke will not be created.  If
echo ÿthe scenario is set in the arid tileset and there is no
echo ÿprecipitation much of the map will be obscured by blowing
echo ÿsand.  If the scenario is set in the frozen tileset much of
echo ÿthe map will be obscured by blowing snow.  Patterns of
echo ÿblowing sand and snow will change from turn to turn.
echo ÿ
echo ÿ                     BATTLEFIELD RESUPPLY
echo ÿAddition:
echo ÿ
echo ÿ        Helicopter units are never eligable for battlefield
echo ÿresupply.  Once they run out of ammo, they stay that way.
echo ÿ
echo ÿ                          CAMPAIGNS
echo ÿAddition:
echo ÿ
echo ÿ        Whenever you start a new game without using the
echo ÿ"Start next scenario in campaign" option, you are beginning 
echo ÿa new campaign.  Any old campaign will be lost.
echo ÿ
echo ÿ        If you re-start a saved game from any file other 
pause
echo ÿthan CAMPAIGN, any current campaign may be lost.  The 
echo ÿCAMPAIGN file contains the latest information on your
echo ÿcampaign.  Earlier saved games may not contain the 
echo ÿinformation necessary to continue the campaign.
echo ÿ
echo ÿ        Remember, the game automatically saves your game
echo ÿas file CAMPAIGN whenever you exit to DOS.  You don't need
echo ÿto manually save games.
echo ÿ
echo ÿTechnical information:
echo ÿ
echo ÿ        The campaign information is stored in the files
echo ÿCAMPAIGN.SAV, LASTGAME.DAT and CAMPAIGN.DAT in the scenario
echo ÿdirectory.  If you want to permanently save a campaign, or
echo ÿsend it to a friend, just copy these three files.  To
echo ÿrestore the campaign, re copy these files into the scenario
echo ÿdirectory. LASTGAME.DAT will only be present if you are
echo ÿbetween games in the campaign.
echo ÿ
echo ÿ                    EDITOR-DRAWING THE MAP
echo ÿClarification:
echo ÿ
echo ÿ        When you use the auto-fill tool, it will fill the
pause
echo ÿmap until a boundary of the same general type of tile is
echo ÿreached. If you don't draw a complete (no gaps) outline 
echo ÿusing the fill tile type before using the auto-fill tool, 
echo ÿyou may fill the entire map with the fill tile.  Boundaries 
echo ÿof other tile types will have no limiting effect on 
echo ÿauto-fill.
echo ÿ
echo ÿ             EDITOR-CREATE THE ORDER OF BATTLE
echo ÿAddition:
echo ÿ
echo ÿ        As you create a formation with the order of battle
echo ÿeditor, the program will create a formation name based on
echo ÿthe types and numbers of units assigned to the formation.  
echo ÿYou can override the automatic formation name by clicking 
echo ÿon the "Rename" button in the upper right corner of the 
echo ÿcurrent formation box.  Your formation names are limited
echo ÿto 12 characters (11 for the tenth and subsequent 
echo ÿformations).
echo ÿ
echo ÿ                    SCENARIO DESCRIPTIONS
echo ÿNew rules section:
echo ÿ
echo ÿ        A short scenario description may appear when you
pause
echo ÿselect a scenario for play.  These scenario descriptions are
echo ÿstored in the form of small ASCII (text) files in the
echo ÿSCENARIO
echo ÿdirectory.
echo ÿ
echo ÿ        If you wish to write a description for a scenario,
echo ÿyou must follow these guidelines:
echo ÿ
echo ÿ        1) Use a text editor capable of saving text in ASCII
echo ÿform.  The MS-DOS editor will do the job, as will most word
echo ÿprocessors.
echo ÿ
echo ÿ        2) A description can have a maximum of 14 lines.
echo ÿEach line can have no more than 36 characters.  If you 
echo ÿviolate these limits, you may see strange results in your 
echo ÿfile description within the game.
echo ÿ
echo ÿ        3) The name of your description file must be based
echo ÿon the name of the scenario you wish to describe.  If your
echo ÿscenario is named "MYGAME.SCE", your description must be
echo ÿnamed "MYGAME.TXT".
echo ÿ
echo ÿ        4) Your description file must be in the SCENARIO
pause
echo ÿdirectory.
echo ÿ
echo ÿ        5) A sample description file (SAMPLE.TXT) is
echo ÿincluded in the SCENARIO directory.  This can be used as a
echo ÿtemplate for your scenario description files.  You can also
echo ÿexamine any of the *.TXT files already in the directory, but
echo ÿplease do not modify them.
echo ÿ
echo ÿ
echo ÿ                       RULEBOOK MISTAKES
echo ÿ
echo ÿ*Page 38, second bullet statement
echo ÿ
echo ÿ     Delete
echo ÿ
echo ÿ     "...that has slight, hidden effects for these values"
echo ÿ
echo ÿ     There are NO "hidden" effects.
echo ÿ
echo ÿ
echo ÿ*Page 41, Fixed Objective Values, last sentence.
echo ÿ
echo ÿ     Replace
pause
echo ÿ
echo ÿ     "... using the manual objective value set button ..."
echo ÿ
echo ÿ     with
echo ÿ
echo ÿ     "... using the Objective Value button ...".
echo ÿ
echo ÿ
echo ÿ     Appendix D - Equipment Description Table (Addition)
echo ÿ
echo ÿEquipment Primary Weapon  Secondary Weapon 
echo ÿ.         .               .           FrontArmor
echo ÿ.         .               .           .   SideArmor
echo ÿ.         .               .           .   .   Speed
echo ÿ.         .               .           .   .   .  Special
echo ÿ                                      
echo ÿT-80      125mmATl        HMG         37  9   22 NV SP WF SM
echo ÿ
echo ÿ         Appendix H - Historical Forces (Addition)
echo ÿ
echo ÿ        By popular demand, a new historical period has been
echo ÿadded to the game database. Its all pretty self explanatory.  
echo ÿThe British, French, and Americans are similar to the forces 
pause
echo ÿused in 1991- with the inclusion of some older equipment not 
echo ÿshipped to the Persian Gulf. The Russians and Ex-Pact can be 
echo ÿused to create Russian civil war or Eastern European 
echo ÿscenarios.
echo ÿ
echo ÿ13. Tomorrow...
echo ÿ
echo ÿBritish force characteristics:
echo ÿmorale: 9, control: 9, supply: 9.
echo ÿair assets: Heavy jet/full player control.
echo ÿ
echo ÿAvailable British units:
echo ÿTank Plt: 3 x Challenger.
echo ÿRecce Plt: 8 x Scorpion.
echo ÿRecce Sec: 2 x Scorpion.
echo ÿRecce Plt: 8 x Scimitar.
echo ÿRecce Plt: 4 x Ferret Armd Car.
echo ÿAT Plt: 3 x Striker.
echo ÿAT Plt: 6 x Milan ATGM, 6 x FV432 APC.
echo ÿGun Bty: 6 x 105mm Gun, 6 x Truck.
echo ÿGun Bty: 6 x 155mm Gun, 6 x Truck.
echo ÿGun Bty: 6 x M109 SP Gun.
echo ÿGun Bty: 6 x M110 SP Gun.
pause
echo ÿMRL Bty: 9 x MLRS.
echo ÿMortar Bty: 8 x FV432/81Mr.
echo ÿMortar Bty: 6 x 81mm Mortar, 6 x Truck.
echo ÿGunship Sc: 2 x Lynx AH1.
echo ÿInf Plt: 3 x Assault/B Squad, 3 x FV432 APC.
echo ÿInf Plt: 3 x Assault/B Squad, 3 x Warrior IFV.
echo ÿ
echo ÿFrench force characteristics:
echo ÿmorale: 9, control: 9, supply: 9.
echo ÿair assets: Heavy jet/full player control.
echo ÿ
echo ÿAvailable French units:
echo ÿTank Plt: 3 x AMX-30.
echo ÿTank Plt: 3 x AMX-30B2.
echo ÿRecce Plt: 3 x ERC-90.
echo ÿRecce Plt: 3 x AML-90.
echo ÿRecce Plt: 3 x AMX-10RC.
echo ÿRecce Plt: 3 x VAB APC.
echo ÿRecce Plt: 4 x Jeep.
echo ÿATGM Bty: 2 x Milan ATGM, 2 x VAB APC.
echo ÿAA Bty: 2 x 20mm DP Gun, 2 x VAB APC.
echo ÿGun Bty: 6 x 105mm Gun, 6 x Truck.
echo ÿGun Bty: 6 x 155mm Gun, 6 x Truck.
pause
echo ÿMortar Sec: 2 x 81mm Mortar, 2 x VAB APC.
echo ÿMortar Bty: 6 x 120mm Mortar, 6 x VAB APC.
echo ÿInf Plt: 3 x Assault/R Squad, 3 x VAB APC.
echo ÿInf Plt: 3 x Assault/R Squad, 3 x AMX-10 APC.
echo ÿ
echo ÿAmerican force characteristics:
echo ÿmorale: 9, control: 9, supply: 9.
echo ÿair assets: Heavy jet/full player control.
echo ÿ
echo ÿAvailable American units:
echo ÿTank Plt: 4 x M1A1 Abrams.
echo ÿTank Plt: 4 x M60A1.
echo ÿTank Plt: 4 x M60A3.
echo ÿTank Plt: 4 x M551 Sheridan.
echo ÿRecce Plt: 6 x M3 Bradley IFV.
echo ÿRecce Sec: 2 x M998 Humvee.
echo ÿAT Plt: 4 x M901-ITV.
echo ÿAA Plt: 4 x M163 SP AA.
echo ÿGun Bty: 8 x M109 SP Gun.
echo ÿGun Bty: 6 x M110 SP Gun.
echo ÿGun Bty: 6 x 105mm Gun, 6 x Truck.
echo ÿGun Bty: 6 x 155mm Gun, 6 x Truck.
echo ÿMRL Bty: 9 x MLRS.
pause
echo ÿMortar Sec: 2 x M125 SP Mortar.
echo ÿMortar Bty: 6 x M125 SP Mortar.
echo ÿGunship Sc: 2 x AH-1 Cobra, 1 x OH-58 Kiowa.
echo ÿGunship Sc: 2 x AH-64 Apache, 1 x OH-58 Kiowa.
echo ÿAB Inf Plt: 3 x UH-60 Blackhawk, 3 x Assault/A Squad.
echo ÿAB Mtr Bty: 4 x UH-60 Blackhawk, 4 x 81mm Mortar.
echo ÿInf Plt: 4 x Assault/A Squad, 4 x M2 Bradley IFV.
echo ÿInf Plt: 4 x Assault Squad, 4 x M113 APC.
echo ÿ
echo ÿRussian force characteristics:
echo ÿmorale: 8, control: 8, supply: 9.
echo ÿair assets: Heavy jet/partial player control.
echo ÿ
echo ÿAvailable Russian units:
echo ÿTank Plt: 3 x T-55.
echo ÿTank Plt: 3 x T-62.
echo ÿTank Plt: 3 x T-64.
echo ÿTank Plt: 3 x T-72 (early).
echo ÿTank Plt: 3 x T-72 (late).
echo ÿTank Plt: 3 x T-80.
echo ÿAs Gun Plt: 3 x ASU-85.
echo ÿRecce Plt: 3 x PT-76.
echo ÿRecce Plt: 3 x BTR-40 Armd Car.
pause
echo ÿRecce Plt: 3 x BRDM Armd Car.
echo ÿATGM Bty: 3 x BRDM/Sagger.
echo ÿATGM Bty: 2 x AT-3 Sagger, 2 x Truck.
echo ÿATGM Bty: 2 x AT-4 Spigot, 2 x Truck.
echo ÿAT Bty: 4 x 85mm AT Gun, 4 x Truck.
echo ÿAT Bty: 3 x 100mm AT Gun, 3 x Truck.
echo ÿAT Bty: 6 x 73mm Recoilless, 6 x Truck.
echo ÿAA Bty: 4 x ZPU-4 AA Gun, 4 x Truck.
echo ÿAA Bty: 4 x ZU-23 AA Gun, 4 x Truck.
echo ÿAA Plt: 4 x ZSU-23/4.
echo ÿAA Plt: 4 x BRDM/SA-9.
echo ÿAA Plt: 4 x SA-13 Gopher.
echo ÿSP Gun Bty: 6 x 2S1 SP Gun.
echo ÿSP Gun Bty: 6 x 2S3 SP Gun.
echo ÿGun Bty: 6 x 122mm Gun, 6 x Truck.
echo ÿGun Bty: 6 x 130mm Gun, 6 x Truck.
echo ÿGun Bty: 6 x 180mm Gun, 6 x Truck.
echo ÿGun Bty: 6 x 152mm Field Gun, 6 x Truck.
echo ÿMRL Bty: 6 x BM-21 MRL.
echo ÿMRL Bty: 6 x BM-24 MRL.
echo ÿMortar Bty: 6 x 82mm Mortar, 6 x Truck.
echo ÿMortar Bty: 6 x 120mm Mortar, 6 x Truck.
echo ÿInf Plt: 3 x Assault/R Squad, 3 x Truck.
pause
echo ÿInf Plt: 3 x Assault/R Squad, 3 x BTR-60 APC.
echo ÿInf Plt: 3 x Assault/R Squad, 3 x BMP-1 IFV.
echo ÿAB Inf Plt: 3 x Mi-8 Hip, 3 x Assault/R Squad.
echo ÿAB Mtr Bty: 6 x Mi-8 Hip, 6 x 82mm Mortar.
echo ÿAB AT Bty: 2 x Mi-8 Hip, 2 x AT-3 Sagger.
echo ÿAB AT Sec: 2 x Mi-8 Hip, 2 x 73mm Recoilless.
echo ÿ
echo ÿEx Soviet force characteristics:
echo ÿmorale: 8, control: 8, supply: 9.
echo ÿair assets: Heavy jet/partial player control.
echo ÿ
echo ÿAvailable Ex Soviet units:
echo ÿTank Plt: 3 x T-55.
echo ÿTank Plt: 3 x T-62.
echo ÿTank Plt: 3 x T-64.
echo ÿTank Plt: 3 x T-72 (early).
echo ÿTank Plt: 3 x T-72 (late).
echo ÿTank Plt: 3 x T-80.
echo ÿAs Gun Plt: 3 x ASU-85.
echo ÿRecce Plt: 3 x PT-76.
echo ÿRecce Plt: 3 x BTR-40 Armd Car.
echo ÿRecce Plt: 3 x BRDM Armd Car.
echo ÿATGM Bty: 3 x BRDM/Sagger.
pause
echo ÿATGM Bty: 2 x AT-3 Sagger, 2 x Truck.
echo ÿATGM Bty: 2 x AT-4 Spigot, 2 x Truck.
echo ÿAT Bty: 4 x 85mm AT Gun, 4 x Truck.
echo ÿAT Bty: 3 x 100mm AT Gun, 3 x Truck.
echo ÿAT Bty: 6 x 73mm Recoilless, 6 x Truck.
echo ÿAA Bty: 4 x ZPU-4 AA Gun, 4 x Truck.
echo ÿAA Bty: 4 x ZU-23 AA Gun, 4 x Truck.
echo ÿAA Plt: 4 x ZSU-23/4.
echo ÿAA Plt: 4 x BRDM/SA-9.
echo ÿAA Plt: 4 x SA-13 Gopher.
echo ÿSP Gun Bty: 6 x 2S1 SP Gun.
echo ÿSP Gun Bty: 6 x 2S3 SP Gun.
echo ÿGun Bty: 6 x 122mm Gun, 6 x Truck.
echo ÿGun Bty: 6 x 130mm Gun, 6 x Truck.
echo ÿGun Bty: 6 x 180mm Gun, 6 x Truck.
echo ÿGun Bty: 6 x 152mm Field Gun, 6 x Truck.
echo ÿMRL Bty: 6 x BM-21 MRL.
echo ÿMRL Bty: 6 x BM-24 MRL.
echo ÿMortar Bty: 6 x 82mm Mortar, 6 x Truck.
echo ÿMortar Bty: 6 x 120mm Mortar, 6 x Truck.
echo ÿInf Plt: 3 x Assault/R Squad, 3 x Truck.
echo ÿInf Plt: 3 x Assault/R Squad, 3 x BTR-60 APC.
echo ÿInf Plt: 3 x Assault/R Squad, 3 x BMP-1 IFV.
pause
echo ÿAB Inf Plt: 3 x Mi-8 Hip, 3 x Assault/R Squad.
echo ÿAB Mtr Bty: 6 x Mi-8 Hip, 6 x 82mm Mortar.
echo ÿAB AT Bty: 2 x Mi-8 Hip, 2 x AT-3 Sagger.
echo ÿAB AT Sec: 2 x Mi-8 Hip, 2 x 73mm Recoilless.
echo ÿ
echo ÿEND OF CHANGES / ADDITIONS.
echo ÿ
echo ÿ                Norm Koger 2.0
echo ÿ
echo ÿ                EMAIL addresses-
echo ÿ                        GEnie: n.koger
echo ÿ                        Internet: n.koger@genie.geis.com
echo ÿ                        (_NO_ "attached files" please!)
echo ÿÿÿ
