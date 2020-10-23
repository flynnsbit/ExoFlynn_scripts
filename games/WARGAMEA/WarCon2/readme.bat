@echo off
echo �TANKS!                                          
echo �May 18 1994
echo �
echo �        This file contains information not available at the
echo �time that the game manual was printed.
echo �
echo �                     COMMAND LINE PARAMETERS
echo �
echo �        TANKS! will accept several command line parameters.
echo �Ordinarily you won't have to worry about this, but they can
echo �be handy under certain special circumstances.
echo �
echo �        DEBUG : Enables a special game error checking and
echo �data recording mode that should only be used at SSI's
echo �request.
echo �
echo �        FM : Forces the game to use FM sounds if your sound
echo �card supports them, even if your sound card normally plays
echo �digitized sounds.  This will free up about 20K of
echo �conventional memory for use by TSR's, etc.
echo �
echo �        MONO : Forces monaural sound on stereo capable
echo �sound cards.  Use this if you don't care for the stereo
pause
echo �effects.  Other than balancing the sound volume from both
echo �speakers, there is no detrimental effect on sound quality.
echo �
echo �        QUICK : Disables the time delays built into the
echo �combat results reports.  Using this will speed up the game
echo �considerably, but you will have to check the results of
echo �combat manually by examining the units involved after the
echo �combat.
echo �
echo �        QUIET : Turns off all sound in the game.
echo �
echo �        VANILLAMOUSE : Some obsolete mouse drivers may
echo �have problems with the game.  If you encounter graphics
echo �"glitches" around the edge of the map try using this
echo �parameter until you can update your mouse driver software.
echo �Using this parameter fixes the shape of the mouse to an
echo �arrowhead and decreases mouse sensitivity in some areas.
echo �
echo �        If you decide to use one or more of these commands,
echo �you just type them after the word TANKS but before you
echo �hit the ENTER key.
echo �
echo �        Example: Typing "TANKS FM VANILLAMOUSE"
pause
echo �would start the game with the fixed mouse cursor and fm
echo �sounds only.
echo �
echo �GRAVIS ULTRASOUND USERS:  In an attempt to support our very
echo �important Gravis users, we've included Gravis(Soundblaster
echo �Emulation Mode) in our sound installer. Unfortunately the
echo �emulation is less than perfect and the game music may sound
echo �out of tune. The sound effects convert quite nicely but some 
echo �users may notice a slowdown in the way the game runs with 
echo �F/X on. SSI is working diligently on ways to provide its
echo �Gravis customers with quality music and sound effects. 
echo �
echo �                    "RANDOM" ORDERS OF BATTLE
echo �Clarification:
echo �
echo �        TANKS! automatically creates orders of battle when
echo �it makes random scenarios and when you use the random forces
echo �button in the editor.  These orders of battle aren't really
echo �"random".  They are based on real unit organizations for
echo �each force represented in the game.  Equipment assignments 
echo �are heavily influenced by the historical overall mobility of 
echo �the force. Low mobility forces tend to have lots of 
echo �dismounted infantry. High mobility forces tend to have lots 
pause
echo �of tanks and mechanized support.  If you wish, you can 
echo �override historical force mobilities with the mobility 
echo �buttons that pop up during random scenario and OOB creation.
echo �
echo �        When you ask the program to create a random
echo �scenario, you will be asked to choose tiny, small, medium, 
echo �or large forces for each side.  These correspond roughly to 
echo �10, 30, 60, or 90 units per side.  But in order to balance 
echo �the scenario, the force sizes you request may be modified.  
echo �This is particularly likely if you select forces with very
echo �different levels of technology or quality.  For example, if 
echo �you request a "tiny" random battle between 1918 Germans and 
echo �1991 Americans, the scenario balancing routine will probably 
echo �create a very large German force.
echo �
echo �                         COMMAND RULES
echo �Addition:
echo �
echo �        Formations with control ratings lower than 7 are
echo �more susceptible to forced "reorganization" (and loss of a 
echo �turn) than those with higher control ratings.  This
echo �reflects the relative scarcity of communications equipment 
echo �and rigidity of command structure in forces with low 
pause
echo �control ratings: 1940 French, Italians, Chinese, Iraqis, 
echo �pre '67 Soviets, and all 1918 armies.
echo �
echo �                        MOVING YOUR UNITS
echo �Addition:
echo �
echo �        Any unit with a non-zero movement rate, which has
echo �not already moved this turn, can always move at least one 
echo �hex regardless of movement cost.
echo �
echo �        Unarmed units will not launch close assaults.  In
echo �order to be considered "armed", the unit must have at least 
echo �one weapon mounted on its "top" equipment type.  Out of 
echo �ammo units will be allowed to assault, but their chance of 
echo �success is small.
echo �
echo �                          DIRECT FIRE
echo �Additions: 
echo �
echo �        If the target unit is in a fort hex, there is a 
echo �40% chance that any direct fire shot will miss.
echo �
echo �        Parent formation morale and control ratings affect 
pause
echo �the accuracy of a unit's fire.  Units belonging to 
echo �formations with poor morale and control ratings will not 
echo �hit their targets as often as units belonging to higher 
echo �quality formations.
echo �
echo �Change: 
echo �
echo �        When firing at a unit composed of an armed
echo �transport and some other type of equipment, the transport
echo �will always be shot at first.  Your units will only fire on
echo �unarmed transports if they (the transports) are the top 
echo �equipment type in the target unit.
echo �
echo �                         INDIRECT FIRE
echo �Addition: 
echo �
echo �        In addition to unspotted intersection, town, and 
echo �village hexes, you can shoot indirect fire into unspotted 
echo �bridge hexes.  A bridge hex is any hex containing a road 
echo �and a stream or river.
echo �
echo �                          SMOKE FIRE
echo �Addition: 
pause
echo �
echo �        The program won't allow you to order smoke fire 
echo �into a hex that already contains smoke.
echo �
echo �                          AMMUNITION
echo �Addition:
echo �
echo �        Most units will eventually run low on ammo if they
echo �fire their weapons.  Infantry and artillery units with 
echo �transports (trucks or whatever) will never run low on ammo 
echo �as long as the transports are not destroyed.
echo �
echo �               SCENARIO ENVIRONMENTAL EFFECTS
echo �Addition:
echo �
echo �        Wind has the following effects:
echo �
echo �        If there is no wind, smoke can be created during
echo �combat and it will tend to linger in the smoked hex for
echo �several turns.
echo �
echo �        If winds are light, smoke can be created during
echo �combat and it will tend to drift with the wind from turn to
pause
echo �turn.
echo �
echo �        If winds are strong, smoke will not be created.  If
echo �the scenario is set in the arid tileset and there is no
echo �precipitation much of the map will be obscured by blowing
echo �sand.  If the scenario is set in the frozen tileset much of
echo �the map will be obscured by blowing snow.  Patterns of
echo �blowing sand and snow will change from turn to turn.
echo �
echo �                     BATTLEFIELD RESUPPLY
echo �Addition:
echo �
echo �        Helicopter units are never eligable for battlefield
echo �resupply.  Once they run out of ammo, they stay that way.
echo �
echo �                          CAMPAIGNS
echo �Addition:
echo �
echo �        Whenever you start a new game without using the
echo �"Start next scenario in campaign" option, you are beginning 
echo �a new campaign.  Any old campaign will be lost.
echo �
echo �        If you re-start a saved game from any file other 
pause
echo �than CAMPAIGN, any current campaign may be lost.  The 
echo �CAMPAIGN file contains the latest information on your
echo �campaign.  Earlier saved games may not contain the 
echo �information necessary to continue the campaign.
echo �
echo �        Remember, the game automatically saves your game
echo �as file CAMPAIGN whenever you exit to DOS.  You don't need
echo �to manually save games.
echo �
echo �Technical information:
echo �
echo �        The campaign information is stored in the files
echo �CAMPAIGN.SAV, LASTGAME.DAT and CAMPAIGN.DAT in the scenario
echo �directory.  If you want to permanently save a campaign, or
echo �send it to a friend, just copy these three files.  To
echo �restore the campaign, re copy these files into the scenario
echo �directory. LASTGAME.DAT will only be present if you are
echo �between games in the campaign.
echo �
echo �                    EDITOR-DRAWING THE MAP
echo �Clarification:
echo �
echo �        When you use the auto-fill tool, it will fill the
pause
echo �map until a boundary of the same general type of tile is
echo �reached. If you don't draw a complete (no gaps) outline 
echo �using the fill tile type before using the auto-fill tool, 
echo �you may fill the entire map with the fill tile.  Boundaries 
echo �of other tile types will have no limiting effect on 
echo �auto-fill.
echo �
echo �             EDITOR-CREATE THE ORDER OF BATTLE
echo �Addition:
echo �
echo �        As you create a formation with the order of battle
echo �editor, the program will create a formation name based on
echo �the types and numbers of units assigned to the formation.  
echo �You can override the automatic formation name by clicking 
echo �on the "Rename" button in the upper right corner of the 
echo �current formation box.  Your formation names are limited
echo �to 12 characters (11 for the tenth and subsequent 
echo �formations).
echo �
echo �                    SCENARIO DESCRIPTIONS
echo �New rules section:
echo �
echo �        A short scenario description may appear when you
pause
echo �select a scenario for play.  These scenario descriptions are
echo �stored in the form of small ASCII (text) files in the
echo �SCENARIO
echo �directory.
echo �
echo �        If you wish to write a description for a scenario,
echo �you must follow these guidelines:
echo �
echo �        1) Use a text editor capable of saving text in ASCII
echo �form.  The MS-DOS editor will do the job, as will most word
echo �processors.
echo �
echo �        2) A description can have a maximum of 14 lines.
echo �Each line can have no more than 36 characters.  If you 
echo �violate these limits, you may see strange results in your 
echo �file description within the game.
echo �
echo �        3) The name of your description file must be based
echo �on the name of the scenario you wish to describe.  If your
echo �scenario is named "MYGAME.SCE", your description must be
echo �named "MYGAME.TXT".
echo �
echo �        4) Your description file must be in the SCENARIO
pause
echo �directory.
echo �
echo �        5) A sample description file (SAMPLE.TXT) is
echo �included in the SCENARIO directory.  This can be used as a
echo �template for your scenario description files.  You can also
echo �examine any of the *.TXT files already in the directory, but
echo �please do not modify them.
echo �
echo �
echo �                       RULEBOOK MISTAKES
echo �
echo �*Page 38, second bullet statement
echo �
echo �     Delete
echo �
echo �     "...that has slight, hidden effects for these values"
echo �
echo �     There are NO "hidden" effects.
echo �
echo �
echo �*Page 41, Fixed Objective Values, last sentence.
echo �
echo �     Replace
pause
echo �
echo �     "... using the manual objective value set button ..."
echo �
echo �     with
echo �
echo �     "... using the Objective Value button ...".
echo �
echo �
echo �     Appendix D - Equipment Description Table (Addition)
echo �
echo �Equipment Primary Weapon  Secondary Weapon 
echo �.         .               .           FrontArmor
echo �.         .               .           .   SideArmor
echo �.         .               .           .   .   Speed
echo �.         .               .           .   .   .  Special
echo �                                      
echo �T-80      125mmATl        HMG         37  9   22 NV SP WF SM
echo �
echo �         Appendix H - Historical Forces (Addition)
echo �
echo �        By popular demand, a new historical period has been
echo �added to the game database. Its all pretty self explanatory.  
echo �The British, French, and Americans are similar to the forces 
pause
echo �used in 1991- with the inclusion of some older equipment not 
echo �shipped to the Persian Gulf. The Russians and Ex-Pact can be 
echo �used to create Russian civil war or Eastern European 
echo �scenarios.
echo �
echo �13. Tomorrow...
echo �
echo �British force characteristics:
echo �morale: 9, control: 9, supply: 9.
echo �air assets: Heavy jet/full player control.
echo �
echo �Available British units:
echo �Tank Plt: 3 x Challenger.
echo �Recce Plt: 8 x Scorpion.
echo �Recce Sec: 2 x Scorpion.
echo �Recce Plt: 8 x Scimitar.
echo �Recce Plt: 4 x Ferret Armd Car.
echo �AT Plt: 3 x Striker.
echo �AT Plt: 6 x Milan ATGM, 6 x FV432 APC.
echo �Gun Bty: 6 x 105mm Gun, 6 x Truck.
echo �Gun Bty: 6 x 155mm Gun, 6 x Truck.
echo �Gun Bty: 6 x M109 SP Gun.
echo �Gun Bty: 6 x M110 SP Gun.
pause
echo �MRL Bty: 9 x MLRS.
echo �Mortar Bty: 8 x FV432/81Mr.
echo �Mortar Bty: 6 x 81mm Mortar, 6 x Truck.
echo �Gunship Sc: 2 x Lynx AH1.
echo �Inf Plt: 3 x Assault/B Squad, 3 x FV432 APC.
echo �Inf Plt: 3 x Assault/B Squad, 3 x Warrior IFV.
echo �
echo �French force characteristics:
echo �morale: 9, control: 9, supply: 9.
echo �air assets: Heavy jet/full player control.
echo �
echo �Available French units:
echo �Tank Plt: 3 x AMX-30.
echo �Tank Plt: 3 x AMX-30B2.
echo �Recce Plt: 3 x ERC-90.
echo �Recce Plt: 3 x AML-90.
echo �Recce Plt: 3 x AMX-10RC.
echo �Recce Plt: 3 x VAB APC.
echo �Recce Plt: 4 x Jeep.
echo �ATGM Bty: 2 x Milan ATGM, 2 x VAB APC.
echo �AA Bty: 2 x 20mm DP Gun, 2 x VAB APC.
echo �Gun Bty: 6 x 105mm Gun, 6 x Truck.
echo �Gun Bty: 6 x 155mm Gun, 6 x Truck.
pause
echo �Mortar Sec: 2 x 81mm Mortar, 2 x VAB APC.
echo �Mortar Bty: 6 x 120mm Mortar, 6 x VAB APC.
echo �Inf Plt: 3 x Assault/R Squad, 3 x VAB APC.
echo �Inf Plt: 3 x Assault/R Squad, 3 x AMX-10 APC.
echo �
echo �American force characteristics:
echo �morale: 9, control: 9, supply: 9.
echo �air assets: Heavy jet/full player control.
echo �
echo �Available American units:
echo �Tank Plt: 4 x M1A1 Abrams.
echo �Tank Plt: 4 x M60A1.
echo �Tank Plt: 4 x M60A3.
echo �Tank Plt: 4 x M551 Sheridan.
echo �Recce Plt: 6 x M3 Bradley IFV.
echo �Recce Sec: 2 x M998 Humvee.
echo �AT Plt: 4 x M901-ITV.
echo �AA Plt: 4 x M163 SP AA.
echo �Gun Bty: 8 x M109 SP Gun.
echo �Gun Bty: 6 x M110 SP Gun.
echo �Gun Bty: 6 x 105mm Gun, 6 x Truck.
echo �Gun Bty: 6 x 155mm Gun, 6 x Truck.
echo �MRL Bty: 9 x MLRS.
pause
echo �Mortar Sec: 2 x M125 SP Mortar.
echo �Mortar Bty: 6 x M125 SP Mortar.
echo �Gunship Sc: 2 x AH-1 Cobra, 1 x OH-58 Kiowa.
echo �Gunship Sc: 2 x AH-64 Apache, 1 x OH-58 Kiowa.
echo �AB Inf Plt: 3 x UH-60 Blackhawk, 3 x Assault/A Squad.
echo �AB Mtr Bty: 4 x UH-60 Blackhawk, 4 x 81mm Mortar.
echo �Inf Plt: 4 x Assault/A Squad, 4 x M2 Bradley IFV.
echo �Inf Plt: 4 x Assault Squad, 4 x M113 APC.
echo �
echo �Russian force characteristics:
echo �morale: 8, control: 8, supply: 9.
echo �air assets: Heavy jet/partial player control.
echo �
echo �Available Russian units:
echo �Tank Plt: 3 x T-55.
echo �Tank Plt: 3 x T-62.
echo �Tank Plt: 3 x T-64.
echo �Tank Plt: 3 x T-72 (early).
echo �Tank Plt: 3 x T-72 (late).
echo �Tank Plt: 3 x T-80.
echo �As Gun Plt: 3 x ASU-85.
echo �Recce Plt: 3 x PT-76.
echo �Recce Plt: 3 x BTR-40 Armd Car.
pause
echo �Recce Plt: 3 x BRDM Armd Car.
echo �ATGM Bty: 3 x BRDM/Sagger.
echo �ATGM Bty: 2 x AT-3 Sagger, 2 x Truck.
echo �ATGM Bty: 2 x AT-4 Spigot, 2 x Truck.
echo �AT Bty: 4 x 85mm AT Gun, 4 x Truck.
echo �AT Bty: 3 x 100mm AT Gun, 3 x Truck.
echo �AT Bty: 6 x 73mm Recoilless, 6 x Truck.
echo �AA Bty: 4 x ZPU-4 AA Gun, 4 x Truck.
echo �AA Bty: 4 x ZU-23 AA Gun, 4 x Truck.
echo �AA Plt: 4 x ZSU-23/4.
echo �AA Plt: 4 x BRDM/SA-9.
echo �AA Plt: 4 x SA-13 Gopher.
echo �SP Gun Bty: 6 x 2S1 SP Gun.
echo �SP Gun Bty: 6 x 2S3 SP Gun.
echo �Gun Bty: 6 x 122mm Gun, 6 x Truck.
echo �Gun Bty: 6 x 130mm Gun, 6 x Truck.
echo �Gun Bty: 6 x 180mm Gun, 6 x Truck.
echo �Gun Bty: 6 x 152mm Field Gun, 6 x Truck.
echo �MRL Bty: 6 x BM-21 MRL.
echo �MRL Bty: 6 x BM-24 MRL.
echo �Mortar Bty: 6 x 82mm Mortar, 6 x Truck.
echo �Mortar Bty: 6 x 120mm Mortar, 6 x Truck.
echo �Inf Plt: 3 x Assault/R Squad, 3 x Truck.
pause
echo �Inf Plt: 3 x Assault/R Squad, 3 x BTR-60 APC.
echo �Inf Plt: 3 x Assault/R Squad, 3 x BMP-1 IFV.
echo �AB Inf Plt: 3 x Mi-8 Hip, 3 x Assault/R Squad.
echo �AB Mtr Bty: 6 x Mi-8 Hip, 6 x 82mm Mortar.
echo �AB AT Bty: 2 x Mi-8 Hip, 2 x AT-3 Sagger.
echo �AB AT Sec: 2 x Mi-8 Hip, 2 x 73mm Recoilless.
echo �
echo �Ex Soviet force characteristics:
echo �morale: 8, control: 8, supply: 9.
echo �air assets: Heavy jet/partial player control.
echo �
echo �Available Ex Soviet units:
echo �Tank Plt: 3 x T-55.
echo �Tank Plt: 3 x T-62.
echo �Tank Plt: 3 x T-64.
echo �Tank Plt: 3 x T-72 (early).
echo �Tank Plt: 3 x T-72 (late).
echo �Tank Plt: 3 x T-80.
echo �As Gun Plt: 3 x ASU-85.
echo �Recce Plt: 3 x PT-76.
echo �Recce Plt: 3 x BTR-40 Armd Car.
echo �Recce Plt: 3 x BRDM Armd Car.
echo �ATGM Bty: 3 x BRDM/Sagger.
pause
echo �ATGM Bty: 2 x AT-3 Sagger, 2 x Truck.
echo �ATGM Bty: 2 x AT-4 Spigot, 2 x Truck.
echo �AT Bty: 4 x 85mm AT Gun, 4 x Truck.
echo �AT Bty: 3 x 100mm AT Gun, 3 x Truck.
echo �AT Bty: 6 x 73mm Recoilless, 6 x Truck.
echo �AA Bty: 4 x ZPU-4 AA Gun, 4 x Truck.
echo �AA Bty: 4 x ZU-23 AA Gun, 4 x Truck.
echo �AA Plt: 4 x ZSU-23/4.
echo �AA Plt: 4 x BRDM/SA-9.
echo �AA Plt: 4 x SA-13 Gopher.
echo �SP Gun Bty: 6 x 2S1 SP Gun.
echo �SP Gun Bty: 6 x 2S3 SP Gun.
echo �Gun Bty: 6 x 122mm Gun, 6 x Truck.
echo �Gun Bty: 6 x 130mm Gun, 6 x Truck.
echo �Gun Bty: 6 x 180mm Gun, 6 x Truck.
echo �Gun Bty: 6 x 152mm Field Gun, 6 x Truck.
echo �MRL Bty: 6 x BM-21 MRL.
echo �MRL Bty: 6 x BM-24 MRL.
echo �Mortar Bty: 6 x 82mm Mortar, 6 x Truck.
echo �Mortar Bty: 6 x 120mm Mortar, 6 x Truck.
echo �Inf Plt: 3 x Assault/R Squad, 3 x Truck.
echo �Inf Plt: 3 x Assault/R Squad, 3 x BTR-60 APC.
echo �Inf Plt: 3 x Assault/R Squad, 3 x BMP-1 IFV.
pause
echo �AB Inf Plt: 3 x Mi-8 Hip, 3 x Assault/R Squad.
echo �AB Mtr Bty: 6 x Mi-8 Hip, 6 x 82mm Mortar.
echo �AB AT Bty: 2 x Mi-8 Hip, 2 x AT-3 Sagger.
echo �AB AT Sec: 2 x Mi-8 Hip, 2 x 73mm Recoilless.
echo �
echo �END OF CHANGES / ADDITIONS.
echo �
echo �                Norm Koger 2.0
echo �
echo �                EMAIL addresses-
echo �                        GEnie: n.koger
echo �                        Internet: n.koger@genie.geis.com
echo �                        (_NO_ "attached files" please!)
echo ���
