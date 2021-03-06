@echo off
echo �README File for Great Naval Battles: North Atlantic 1939-1943
echo �IBM  Version 1.2
echo �February 17, 1993
echo �
echo �Any information included under GNB Version 1.2 precludes any and all
echo �previous references. I would also like to thank all of the people on
echo �Compuserve, GEnie and Prodigy who sent me notes, and the people who
echo �called or wrote letters, for their contribution to the game.
echo �
echo �This document is broken up into four sections: 1. All of the bug
echo �fixes for GNB Version 1.2; 2. All of the features and bug fixes
echo �made to GNB Version 1.1; 3. Answers to many commonly asked
echo �questions about the game; 4. The GNB Version 1.0 Notes. Note:
echo �Information in the first and second sections may supercede statements
echo �made in the fourth section.
echo �
echo �WARNING!!!
echo �----------
echo �Great Naval Battles Version 1.2 requires 724K of EMS instead of the
echo �700K recommended in the User's Guide. To correct this problem, change
echo �the following line in your CONFIG.SYS file:
echo �
echo �DEVICE=C:\DOS\EMM386.EXE 724
pause
echo �                         ---
echo �
echo �
echo �
echo �1. Version 1.2 Bug Fixes
echo �========================
echo �
echo �Most of the Version 1.2 changes are more subtle in nature. The major
echo �improvements are as follows:
echo �
echo �TF Ops - You can no longer "Shadow" a ship that you cannot see.
echo �
echo �Gunnery - We have worked out the bugs related to running out of ammo,
echo �guns on local control, damaged directors, and damaged guns. The
echo �turret no longer tracks if you lose the gun's barbette.
echo �
echo �Torpedo - You can no longer get an unlimited supply of torpedoes if
echo �you lose one of your mounts.
echo �
echo �Air Ops - Spotting planes no longer use a carrier staging area
echo �graphic.
echo �
echo �Damage Control - We have found and fixed the "Empty Box" bug. This is
pause
echo �when a section gets damaged and turns into an empty damage box. Also,
echo �the computer AI will now consider flooding damage as more important
echo �to fix than fire damage and the computer now does a better job of
echo �counterflooding a ship.
echo �
echo �Tactical AI - We have been tweaking with the AI to make the computer
echo �fight a better battle. The ships will initially try to maintain a
echo �formation at the beginning of a battle instead of individually
echo �maneuvering. The target selection system has been improved to select
echo �a more appropriate target.
echo �
echo �Replay - We have found and fixed a few more problems relating to
echo �replaying battles. The system shows the correct amount of damage now,
echo �it runs faster, and counterflooding boxes now clear when the water is
echo �pumped out.
echo �
echo �Barents Sea Operation - There are no longer any tankers.
echo �
echo �"P" Class Pocket Battleship - The game has a [2x3] main gun system
echo �instead of a [3x2] system. (Super Ships)
echo �
echo �Atlanta Class Cruiser - All of this class has only 12 guns. (America)
echo �
pause
echo �Fletcher Class Destroyer - The torpedo tube graphic in the Damage
echo �Control screen shows only four tubes instead of five. (America)
echo �
echo �Arming Distances for ship-based Torpedoes:
echo �    Type     Range      Arming Distance
echo �    ====     ======     ===============
echo �  British
echo �    Mk I     15,000     1,580
echo �             20,000     1,350
echo �    Mk IV     8,000     1,760
echo �             10,000     1,580
echo �             13,500     1,130
echo �    Mk VII   16,000     1,490
echo �    Mk X      3,280     2,120
echo �              8,750     1,620
echo �             13,120     1,310
echo �  German
echo �    GVIIaT1   6,500     1,980
echo �  American
echo �    Mk VIII   5,000     2,030
echo �              7,000     1,850
echo �
echo �
pause
echo �
echo �
echo �2. Version 1.1 Features and Bug Fixes
echo �=====================================
echo �January 19, 1993
echo �
echo �Added Commands
echo �--------------
echo �[ESC](in combat) = If your game ever freezes up, hitting this key will
echo �make the game move again. (This is VERY VERY rare.)
echo �
echo �Alt-A = Resets your mouse driver, if your mouse stops working during
echo �the game.
echo �
echo �Alt-R(in replay) = Turns the messages on and off.
echo �
echo �Alt-Q(in replay) = Quits the replay.
echo �
echo �General
echo �-------
echo �If the game goes back to DOS after playing the Introduction instead
echo �of running the game, try running GNBNA386.EXE.
echo �
pause
echo �The game should now set up with all SoundBlasters, SBPros, and
echo �Thunderboards. Just reconfigure the game using the SOUND.EXE program.
echo �
echo �We have improved the mouse sampling rate.
echo �
echo �The sound system has undergone some improvement:
echo �Sound effects now occur at "X2" speed as well as "NORMAL" speed.
echo �Secondary Guns are now softer.
echo �Other ship fire is now softer.
echo �Your ship being hit now has #1 priority with no clipping.
echo �
echo �The Game will now allow you to reinstall the game if you haven't
echo �deleted the old game and subdirectories.
echo �
echo �Scenarios
echo �---------
echo �The Hipper is no longer a Bismarck class ship in the Jutland II
echo �scenario.
echo �
echo �Campaign
echo �--------
echo �Abstract naval actions no longer throw ships immediately into repair.
echo �Damaged ships end up in Liverpool/Kiel and are left in the port area.
pause
echo �
echo �The "Gap Patrol Pool" should work properly.
echo �
echo �The Graf Spee is no longer "ABROAD" in the South Atlantic.
echo �
echo �Task Forces do not go up into Newfoundland anymore.
echo �
echo �In tactical combats during the campaign, you will always get a prompt
echo �to leave a battle every hour. However, there is a possibility that
echo �you cannot escape.
echo �
echo �We no longer sink unseaworthy ships after a combat.
echo �
echo �All ships surviving a combat will have one of each of the following
echo �even if all of them were destroyed during the combat: Steering Gear,
echo �Boiler, Engine, Rudder, Shaft, and matching Propeller.
echo �
echo �Tankers no longer have aircraft.
echo �
echo �Air attack circles should now reflect the actual ranges of the
echo �attacking planes.
echo �
echo �The AI player now repairs damaged ships on Escort Duty. It no longer
pause
echo �sends damaged ships to sea as escorts.
echo �
echo �The Convoy Escort has changed slightly. If you don't have enough
echo �escort ships, you will start losing ships to U-Boat attacks.
echo �
echo �The "Join" command now works properly and the error message now
echo �works.
echo �
echo �Ship Aircraft losses are now replaced when repairing in port.
echo �
echo �Aircraft no longer multiply when making air strikes.
echo �
echo �You can no longer make multiple CV TFs.
echo �
echo �Aircraft replacement should now work properly.
echo �
echo �Convoys will now add CVs and CAs. You should be able to get 1CV, 1BB,
echo �1CA, and 2DDs into a convoy.
echo �
echo �Base aircraft should be a little more effective (especially if you
echo �are the German player.)
echo �
echo �The "IN USE" display in repair has been eliminated.
pause
echo �
echo �The British TF AI has been improved.
echo �
echo �Damaged ships from strategic air strikes are no longer automatically
echo �dumped into repair.
echo �
echo �Destroyers should lose 40 percent more efficiency than Battleships
echo �during the same time, and Cruisers should lose 10 percent more than
echo �Battleships.
echo �
echo �Weather conditions will effect the loss of efficiency more.
echo �
echo �Only one TF will be allowed to "SHADOW" another TF.
echo �
echo �Larger TFs should be easier to spot.
echo �
echo �Freshly constructed ships now start at 75 percent efficiency. [To
echo �simulate the lack of preparedness of the ship and crew]
echo �
echo �Single ship British TFs should no longer be created and disbanded in
echo �Ulster during the Campaign game.
echo �
echo �The German DD Thiele no longer produces oil. [Fuel goes up, not down]
pause
echo �
echo �The "TF Display" option from "Reports" should work properly under all
echo �circumstances.
echo �
echo �The "CRUISE" button on the "TF Orders" should work all of the time.
echo �
echo �Combat General
echo �--------------
echo �"Form" and "Shadow" should both work as described in the manual.
echo �
echo �Ships no longer give DDs #1 priority in an attack over all other
echo �ships.
echo �
echo �Ships no longer "Vanish" in the Binoc view.
echo �
echo �The computer will now carry out torpedo attacks in the "AUTO TORP"
echo �mode.
echo �
echo �The game no longer slows down when two ships are on top of each other.
echo �
echo �Carrier planes now launch their torpedoes at the proper range and
echo �from the proper angles.
echo �
pause
echo �AI controlled ships maneuver a lot better, and no longer want to run
echo �away all of the time.
echo �
echo �Ships on a automatic torpedo run no longer have a wildly swinging
echo �bearing pointer on the compass gauge in the Navigation Station.
echo �
echo �You can no longer get a Beaufort Scale of 11 in a combat.
echo �
echo �The rudder works properly after a tight turn.
echo �
echo �Sunken ships can no longer take Additional hits.
echo �
echo �Air Operations
echo �--------------
echo �The Air Ops station has been changed. Now, the button starts by saying
echo �"READY". When you click the button, the timer will start for readying
echo �the plane(s) for launch and the button will say, "ARMING". Once the
echo �plane(s) are ready, the button changes to "LAUNCH" and the rest of
echo �the Air Ops station works as the manual. This allows you to choose
echo �when and if you want to launch these vulnerable and highly explosive
echo �planes, or keep them where they are safe. The readying time has also
echo �been increased to 30 minutes, and once a seaplane has been launched,
echo �there is a chance that it will be lost when you try to recover it
pause
echo �(based on the weather.)
echo �
echo �Spotting planes effect ranging and holding a targets as well as
echo �reducing ship minuses due to multiple ship fire.
echo �
echo �The computer will now use seaplanes in combat.
echo �
echo �Damage Station
echo �--------------
echo �Fires are now more deadly.
echo �
echo �We now use a fire extinguisher icon when a damage control party is
echo �fighting a fire.
echo �
echo �The order in which flooded compartments are picked by AI to be pumped
echo �is now more intelligent.
echo �
echo �The situation where a ship that gets hit below the waterline by
echo �either a shell or a torpedo will actually be damaged on the other
echo �side has been fixed.
echo �
echo �Ships should now recover speed after being repaired in combat.
echo �
pause
echo �We have reduced the number of rudder and propeller hits from
echo �shellfire.
echo �
echo �Gunnery Stations
echo �----------------
echo �Secondary Guns work properly now.
echo �
echo �The hit percentage Number now has more factors included in the number.
echo �
echo �Small caliber shells no longer do too much damage.
echo �
echo �Center stability will now affect gunfire. Smaller ships will not be as
echo �stable a gun platform and therefore will not be as accurate.
echo �
echo �The range number should no longer jump by 2-3000 yds. at a time.
echo �
echo �The computer will now turn off the front guns if you switch from
echo �"BSIDE" to "AFT" and select a target.
echo �
echo �Torpedo Station
echo �---------------
echo �Torpedoes will no longer only travel to the short range, even if set
echo �at medium or long range.
pause
echo �
echo �DDs no longer have unlimited torpedoes.
echo �
echo �Torpedoes no longer go off at a right angle at 300kts.
echo �
echo �Replay
echo �------
echo �Replay should now load and save properly. However, your old replay
echo �files may or may not work.
echo �
echo �The replay should now accurately display the shell hits and damage.
echo �Note:  some of the displays do not work because storing all of the
echo �data on the ship would slow down the game, so we selectively record
echo �only things that we thought were important. For instance, this means
echo �that we don't track damage control parties.
echo �
echo �
echo �
echo �
echo �3. Answers to Commonly Asked Questions
echo �======================================
echo �Why isn't the German Carrier, Graf Zeppelin, in Super Ships?
echo �------------------------------------------------------------
pause
echo �    There are a lot of reasons that we did not add the Graf Zeppelin
echo �to the game: 1) Due to Goering's dislike and mistrust of the German
echo �navy, a naval arm of the Luftwaffe was never developed. In fact,
echo �Goering did his best to delay design work on naval versions of combat
echo �planes during the war. The Graf Zeppelin might have been finished,
echo �but she wouldn't have had planes or pilots. 2) Only one carrier was
echo �being built. Even if she was functional, she couldn't have done much
echo �alone. 3) Carrier operations weren't as important in the North
echo �Atlantic. The visibility was poor and the weather was bad. 4) Carrier
echo �operations are a minor part of the game. We thought that people would
echo �enjoy improvements in the game more than adding a German carrier and
echo �add all of the extra stuff to make carrier vs. carrier operations
echo �work.
echo �
echo �Why were Hull and Wilhelmshaven removed?
echo �----------------------------------------
echo �    The Computer plotting and AI got confused when these ports were
echo �added. We increased other port facilities to compensate for the
echo �missing ports.
echo �
echo �Can a ship be captured?
echo �-----------------------
echo �    No.
pause
echo �
echo �What is the Scuttle button used for?
echo �------------------------------------
echo �    It sinks the ship. I think the question should have been: WHY
echo �would you want to scuttle a ship? I don't know. If you want to get
echo �rid of a ship, this does it. There is no NEED to scuttle a ship.
echo �
echo �Why is there no distinction between the CAs?
echo �--------------------------------------------
echo �    We don't have German Light Cruisers, and the British "Light"
echo �Cruisers were sometimes bigger than their Heavy Cruisers. We didn't
echo �think it was necessary to make that distinction. In the Pacific game,
echo �we will have Light, Heavy and Light AA categories.
echo �
echo �What is the "Captain's View"?
echo �-----------------------------
echo �    All of the Stations comprise the Captain's View. At one time we
echo �had a consolidated screen, but we took some of the information and
echo �moved it to the Fleet Screen making a consolidated screen seem too
echo �redundant.
echo �
echo �Why did I get a "Fire Spreads" message on my undamaged ship?
echo �------------------------------------------------------------
pause
echo �    Even though a shell does not penetrate the ship, it can still
echo �damage and set fire to structures on the ship, like secondaries.
echo �
echo �Where are the troop convoys mentioned in the manual?
echo �----------------------------------------------------
echo �    Originally, we wanted to have separate Merchants, Oilers, and
echo �Troop Transports (the graphics were even done.) However, space
echo �limitations forced us to not add these ships and turn all convoys
echo �into Generic Convoys.
echo �
echo �How do you use your Base planes for Recon, Patrol?
echo �--------------------------------------------------
echo �    You don't. The computer automatically sends out your search
echo �planes for you. The only planes you control are the attack planes.
echo �
echo �Why aren't there fire and near miss graphics in overhead view of the
echo �game?
echo �--------------------------------------------------------------------
echo �    Although done, there was not enough memory to fit these elements
echo �into the game.
echo �
echo �Why are my ship graphics not as good as the ones on the box?
echo �------------------------------------------------------------
pause
echo �    I have heard this question a couple of times and have concluded
echo �that the people who have this problem are running the non-EMS version
echo �of the game. The non-EMS version of the game uses a separate smaller
echo �(and much less detailed) version of all of the ships (PS. the game
echo �runs much slower.) If the version number does not have an E after
echo �it, you are NOT running the EMS version of the game. Refer to the
echo �User's Guide to get the EMS to work. Also, the slower the machine,
echo �the less 3D graphics the computer displays. This is done for speed.
echo �
echo �What is "SHADOW" and how does it work?
echo �--------------------------------------
echo �    Unfortunately, there are actually three different types of
echo �"SHADOW" in the game. One is in the Admiralty view, second is the in
echo �the Fleet view and the last is in the Air Ops Station. They are not
echo �related. "SHADOW" in Admiralty means, "Set this TF to follow the
echo �enemy TF, so that you can keep an eye on it instead of fighting it."
echo �In the Fleet view it means, "Mirror the actions of the enemy ship,
echo �based upon the offset that you chose with the marker." In the Air Ops
echo �Station it means, "Follow the selected enemy ship and feed gunnery
echo �information to our ship." There are no restrictions on the use of
echo �"SHADOW" in either of the combat stations, but there are restrictions
echo �in the Admiralty view. The Germans and British convoys cannot
echo �"SHADOW". You also must be as fast or faster than the enemy TF to
pause
echo �"SHADOW" it.
echo �
echo �How does the ship's gunnery system work and what does the hit percent mean?
echo �---------------------------------------------------------------------------
echo �    The hit percentage number presented on the main gunnery screen
echo �seems to have caused some confusion because of its inaccuracy. The
echo �usual following comment is "Why can't the number be an accurate
echo �estimate of the guns chance to hit the target?" The following
echo �discussion will attempt to address this question by giving some
echo �insight into the game's gunnery system.
echo �
echo �    The current number is calculated by using the most significant
echo �factors and really gives a relative guide to gunnery accuracy, 1
echo �percent obviously being a poorer shot than 15 percent. The actual
echo �percentage is quite accurate in the middle range bands but breaks
echo �down at extreme long or close ranges. The lower the number the more
echo �the player must search for ways to improve his positive gunnery
echo �factors and minimize his negative factors. (list of these factors
echo �is included later)
echo �
echo �    The problem stems from the use of a simulation system for the
echo �gunnery rather than the more traditional wargame approach. In the
echo �traditional system the firing ships salvo is modified by the
pause
echo �appropriate factors and the result is a number of hits or the chance
echo �of a single hit. This approach is used in games with turns covering
echo �perhaps 15 seconds to a minute and produces good statistical results.
echo �The problem with this system when applied to a real time simulation
echo �is mostly connected with shell flight time. At extreme range a shell
echo �takes over 60 seconds to reach its target. The target ship can travel
echo �considerable distance in that time and this is usually factored into
echo �wargames by crew quality and other judgement type variables. In a
echo �simulation the player takes the role of the ships commanding officer
echo �and should have the ability to react to enemy gunnery in the same way
echo �that real naval officers did. The other problem often caused by the
echo �wargame approach is that it must use special rules to calculate
echo �whether a salvo will hit other ships in the area of the target ship.
echo �
echo �    The solution used in GNBNA was to simulate the mechanisms
echo �actually used and allow the player the greatest possible influence on
echo �the factors which affect gunnery. The process of firing main guns at
echo �distances up to 20 miles starts with estimating several factors about
echo �the target ship: its speed, course and range. The ship is equipped
echo �with various types of equipment to determine these factors. These
echo �estimates are fed into a simple computer along with details of the
echo �ships speed and course and a firing solution is prepared. This is
echo �translated into specific gun elevations and directions. The usual
pause
echo �process included several spotting salvos of only one gun per turret
echo �staggered over time to provide more data on range.
echo �
echo �    GNBNA calculates the same estimated numbers by using the quality
echo �of the individual ships equipment and applying random factors
echo �appropriate to the level of information the firing ship would have.
echo �The result of all of these calculations is the location of the enemy
echo �ship when the shells will get there (remember shell flight times can
echo �be up to a minute). The salvo is then fired at that location, the
echo �salvo will scatter depending upon the range and individual shell
echo �manufacturing differences, the result is an impact area along the
echo �path of the shells. The first few salvos at long range will probably
echo �be off-target but the gunnery system will adjust and refine its
echo �estimates. The chances of hitting the target ship is therefore mostly
echo �based on this estimating process. However, if the target changes
echo �course/speed he may not be at the predicted position. The shells
echo �scatter during flight and are individually plotted on the ocean and
echo �then this position is compared to ALL ships to see if they are hit.
echo �
echo �    The simulation of the gunnery process allows for detailed
echo �implementation of factors affecting gunnery and produce realistic
echo �results. The factors affecting gunnery are discussed below. The
echo �problem of the hit percentage number can now be seen, the computer
pause
echo �cannot predict the actions of the enemy ship and therefore cannot
echo �give more than a approximate chance of hitting.
echo �
echo �Gunnery factors.
echo �
echo �1. Enemy course/speed change.
echo �
echo �The enemy course/speed change will really only be significant at
echo �longer ranges because of the shell flight time factors discussed
echo �above.
echo �
echo �2. Number of spotting salvo's fired at same ship.
echo �
echo �The spotting salvo's give much better feedback to the estimating
echo �process than do other salvo types and therefore produce an accurate
echo �firing solution quicker, however they also scatter shells over a much
echo �greater area and reduce the chances of any single shell impacting the
echo �target ship. It is best to switch to Full fire once the shells are
echo �landing closely around the target ship.
echo �
echo �3. Number of non-spotting salvo's fired at same ship.
echo �
echo �Non-spotting salvo's are more difficult to estimate and therefore
pause
echo �will reduce the accuracy of the firing solution after several have
echo �been fired, therefore once shells stop falling around the target ship
echo �switch back to spotting.
echo �
echo �4. Number of shells in salvo.
echo �
echo �The number of shells fired with an accurate firing solution
echo �determines the number of hits that are possible, ships with more guns
echo �will probably get more hits, a simple factor but often overlooked.
echo �
echo �5. Number of ships firing at same target.
echo �
echo �If more than one ship is firing at the same target, this will degrade
echo �the accuracy of all the firing ships. The gunnery officers cannot
echo �determine which shells are from which ships and therefore produce
echo �less accurate estimates. If the ship has a spotting plane in the air
echo �and a working radio, the ship being shadowed by the plane will be
echo �targeted without the multiple ship penalty.
echo �
echo �6. Firing ship under fire.
echo �
echo �If the firing ship is under fire, it will not be able to fire as well
echo �because the gunnery officers may not be able to spot splashes etc.
pause
echo �because of obscuring water-spouts thrown up by enemy gunnery.
echo �
echo �7. Director quality.
echo �
echo �The director quality is an abstraction of the firing ships gunnery
echo �estimating/control system and governs the speed at which an accurate
echo �solution is gained.
echo �
echo �8. Firing ship rudder position/listing.
echo �
echo �The sharper the firing ship turns, the more impact it has on the
echo �gunnery systems (usually mounted high on the ship and therefore
echo �affected by listing/turning).
echo �
echo �9. Radar.
echo �
echo �Radar became available during the period of the game and allowed much
echo �quicker estimating, thereby reducing the estimating process
echo �considerably.
echo �
echo �What does a spotting plane do?
echo �------------------------------
echo �    A spotting plane does a variety of things in regards to gunfire:
pause
echo �It speeds up the target refinement process, it increases the time
echo �that the guns can remain firing without getting out of sync, and it
echo �negates the "number of ships firing at the same target" penalty.
echo �
echo �How do "NRRW" and "WIDE" work?
echo �------------------------------
echo �    "NRRW" makes a tight spread of shells that can be useful at close
echo �ranges, if you have a good range on a target. "WIDE" makes a wide
echo �spread that can be useful at very long ranges and can be used to hit
echo �multiple ships if the ships are close together.
echo �
echo �Does the computer use "NRRW" or "WIDE"?
echo �---------------------------------------
echo �    Yes, it does. However, it only does it when it is absolutely sure
echo �that the setting will work better than "FULL".
echo �
echo �Why does the Main Gun stop firing when the Fore or Aft Ammo runs out?
echo �---------------------------------------------------------------------
echo �    Due to the way that targeting is determined, the computer cannot
echo �fire a Broadside with one of the sides out of ammo. If you switch to
echo �FORE or AFT and then pick a target, the guns will fire again.
echo �
echo �How do you use the Torpedo Station?
pause
echo �-----------------------------------
echo �    Torpedoes can be fired from this screen using two methods. First,
echo �you can look at where you want to fire the torpedoes, guess the point
echo �where you wish to fire, and then set the direction using the
echo �PORT/SRBD and FA(firing angle) settings, set the number, the spread
echo �size and the running time(if it has multiple ranges) of the
echo �torpedoes, and then fire. Or you can use the Targeting computer to
echo �give you an estimate of the proper firing angle to the target you
echo �have selected, and then set the FA, torpedoes and fire.
echo �
echo �Is there a minimum range for torpedoes?
echo �---------------------------------------
echo �    Yes. It is about 1000 yds. or 80 seconds running time.
echo �
echo �What do the convoy names mean?
echo �------------------------------
echo �Name    Route           Name meaning
echo �
echo �HX      USAUK           Homeward Bound from Halifax
echo �OB      UKUSA           Outward Bound from USA
echo �HG      MEDUK           Homeward Bound from Gibraltar
echo �OG      UKMED           Outward Bound to Gibraltar
echo �PQ      UKUSSR          No meaning
pause
echo �QP      USSRUK,         No Meaning
echo �SL	AFRICAUK,	Homeward bound from Sierra Leone
echo �OS	UKAFRICA,	Outward bound to Sierra Leone
echo �
echo �How does scoring work?
echo �    In the combats:
echo �        Greater than 500  is a DRAW
echo �        500-1999  is a TACTICAL VICTORY
echo �        2000-4999  is a MAJOR VICTORY
echo �        5000 or Greater  is a DECISIVE VICTORY
echo �
echo �The points for each ship are generated by the number and type of
echo �guns, armor, radar, fire control, engines, etc. Damage points are
echo �determined by the systems that have been destroyed during the combat.
echo �If a ship is destroyed, you get all of the points.
echo �
echo �    In the campaigns/operations:
echo �        BRITISH POINTS / GERMAN POINTS
echo �        Greater than 1:1  is a DECISIVE GERMAN VICTORY
echo �        1:1 to 3:1  is a MARGINAL GERMAN VICTORY
echo �        4:1 to 7:1  is a MARGINAL BRITISH VICTORY
echo �        8:1 or Greater  is a DECISIVE BRITISH VICTORY
echo �
pause
echo �The British get 10 points for every non-scattered convoy that arrives
echo �at its destination. The Germans get 120 points for each merchant that
echo �is sunk. And both sides get their combat points.
echo �
echo �Changes to Scoring system from v1.0: Merchants are now worth 20
echo �percent more points to the Germans, and corrections to the ship point
echo �calculations result in new values to all ships.
echo �
echo �
echo �
echo �
echo �4. IBM  Version 1.0 Notes
echo �=========================
echo �September 22, 1992
echo �
echo �    Enclosed are the final notes listing changes and new features for
echo �the game:
echo �
echo �1) This is NOT a Windows game! If you use Windows, we recommend that
echo �you run this game from outside of Windows. If you still want to run
echo �this game, set your .PIF file for 100 percent usage and make sure you
echo �have SMARTDRV.SYS loaded. It would also help to have at least 4 Meg
echo �of RAM on a 386/40 or a 486/33. We make NO guarantees that this game
pause
echo �will run under Windows.
echo �Note:  SMARTDRV.SYS will help the speed of this game even without
echo �Windows.)
echo �
echo �2) There are two memory profiles for this game, the EMS and NOEMS
echo �versions. This program auto-senses which version is appropriate for
echo �your machine. If the program cannot sense your EMS or thinks you have
echo �EMS when you don't, you can override the program by typing GNBNA EMS
echo �[Enter] for the EMS version or GNBNA NOEMS [Enter] for the NOEMS
echo �version.
echo �
echo �3) If you wish, you can avoid the introduction by typing GNBNA386
echo �[Enter] instead of GNBNA.
echo �
echo �4) Some of the ships don't exactly match the manual. The following
echo �differences have been made to the game
echo �
echo �    a) There is only one ship type for each class. Therefore, any
echo �    aberrations listed in the manual are not in the game. For
echo �    instance, the Tirpitz will have no torpedoes, but the Gneisenau
echo �    will have torpedoes.
echo �
echo �    b) There is only one Carrier type in the game. It has a speed of
pause
echo �    30 knots, can hold 12 airplanes, is 660 ft. long, and has no main
echo �    or secondary guns.
echo �
echo �    c) The number of airplanes may not match the number of planes
echo �    listed in the manual. This is due to inconsistencies between the
echo �    number of possible airplanes vs. the number of operational
echo �    airplanes.
echo �
echo �    d) All of the ship lengths in the game are in 30 foot increments,
echo �    so they may not match the manual.
echo �
echo �    e) The improved Z class German destroyer has 5, not 4 guns. The
echo �    foreward turret has 2 guns.
echo �
echo �    f) There is an armor listing for secondaries on the Hood. Since
echo �    there are no secondaries, this is an error.
echo �
echo �    g) We are not using casemate guns in the game. They had poor
echo �    angles of fire, were highly slow and inaccurate, and could not be
echo �    used in rough weather. The British during the war removed most of
echo �    the casemate guns on the few ships that still had them.
echo �
echo �    h) The Hipper class secondary guns have not been included in the
pause
echo �    game. This is because they were, in reality, AA guns and did not
echo �    carry the proper ammo or have the proper fire control to shoot at
echo �    ships.
echo �
echo �    i) The Nelson class battleship does not have the two foreward
echo �    below waterline torpedo tubes. They were only used once and were
echo �    an abysmal failure. (Battleships cannot be maneuvered like a
echo �    submarine.)
echo �
echo �    j) The Renown class battlecruiser does not have secondaries for
echo �    the same reason as the Hipper class.
echo �
echo �    k) We removed the "E" class cruiser. There were only 2 ships, and
echo �    they were old and not very useful in ship combat. (Plus, the
echo �    British have plenty of ships.)
echo �
echo �5) Certain menu options are unavailable to the German player during
echo �the campaign. All menus options that involve Convoys and Patrols
echo �cannot be selected.
echo �
echo �6) The ports, "Hull" and "Wilhelmshaven" from the map on the back of
echo �the manual are not used by the game.
echo �
pause
echo �7) Patrol and Escort Pool ships may only be added to or removed from
echo �Scapa Flow and there is no delay in adding to or removing ships.
echo �
echo �8) If a ship is released from Escort or Patrol duty due to damage or
echo �effectiveness, they will appear in Liverpool.
echo �
echo �9) "Refuelling" Task Forces will not rearm Task Forces. You must
echo �"Disband" a TF at a base in order to rearm a ship.
echo �
echo �10) You will recover one point of effectiveness of every ship in port
echo �with an effectiveness of 70 percent or better per day. This will not
echo �repair damage, but will get your ships and crews up to fighting trim.
echo �
echo �11) "Repair" fixes damaged ships and ships with effectivenesses of
echo �under 100 percent. The number refers to the number of days until the
echo �ship is repaired.
echo �
echo �12) Repairs will take a minimum of 20 days.
echo �
echo �14) All repair and effectiveness gains occur once a day.
echo �
echo �15) The magnification numbers in the lower left of the Flag Bridge and
echo �Tactical View screens refer to the number of miles vertically(V:) and
pause
echo �horizontally(H:) displayed.
echo �
echo �16) If a German TF is being "SHADOWED", it cannot engage convoys.
echo �
echo �17) The wind speed will affect the maximum speed of a ship in tactical
echo �combat. The gauge will not change, but you will not be able to speed
echo �up past a certain speed.
echo �
echo �18) The "Ship" switch in the "Circle" menu turns on the active ship's
echo �range circles. If you switch to another ship, it still only shows the
echo �circles from the previous ship.
echo �
echo �19) When fighting merchant convoys. Even though the convoy list might
echo �show as many as 20 merchant ships, the combat will only have from
echo �seven to ten merchant ships.
echo �
echo �20) On the Flag Bridge and the Tactical Map, the colors on the screen
echo �mean different things:
echo �    Blue - German ships/planes.
echo �    Red - British ships/planes.
echo �    Lt. Cyan - Hvy. Caliber (11"-16") shell splashes.
echo �    Cyan - Med. Caliber (8") shell  splashes.
echo �    Lt. Magenta - Lt. Caliber shell splashes.
pause
echo �    Lt. Grey - Torpedoes.
echo �    Dk. Grey - Smoke.
echo �    Lt. Blue - Returning German planes.
echo �    Lt. Red - Returning British planes.
echo �    Yellow Flashing Icon - Ship has been hit.
echo �
echo �21) Torpedoes travel for 80 seconds before they arm.
echo �
echo �22) The German torpedo chart on p. 74 on the manual is missing the
echo �following: GVIIaT1 (Long) 15300/30.
echo �
echo �23) When selecting ships in the campaign game, click in the ship name.
echo �
echo �24) On p.29, West of Newfoundland is actually East. (OK, you got us.
echo �The combat doesn't actually happen on land.)
echo �
echo �25) On p.30, West of Montevideo is actually East. (OK, we were having
echo �problems with east and west that day.)
echo �
echo �26) The Status Report shows the undamaged version of each ship.
echo �
echo �27) If the German player runs out of capital ships during a campaign
echo �game, the game will end and the player will only get one-half of the
pause
echo �points he actually earned during the campaign.
echo �
echo �28) If you have Scout or Attack planes in the air, you must recall
echo �them before the end of combat or you will lose them.
echo �
echo �29) There are four new scenarios not documented by the manual:
echo �
echo �    Denmark Straits with Cruisers - This is the Denmark Straits battle
echo �    with the Norfolk and Suffolk added in the battle.
echo �    (The British get an added punch, maybe)
echo �
echo �    Best Tradition of the Service - Coming out of a fog bank, the
echo �    Glowworm has accidentally stumbled across the Hipper.
echo �    9:57AM     Beaufort Scale: 8     Range: 1000yds.
echo �    (This is a quick one folks)
echo �
echo �    Convoy HX-106 - This is a hypothetical battle of the Sharnhorst
echo �    and Gneisenau ecountering a convoy escorted by the Ramilles and
echo �    two "E" class destroyers.  10:30AM     Beaufort Scale: 3 (Try out
echo �    your convoy killing tactics or practice defending convoys)
echo �
echo �    Old vs. New - Another hypothetical battle pitting the Sharnhorst
echo �    and Gneisenau against the Renown and three "H" class destroyers.
pause
echo �    12:30AM     Beaufort Scale: 8
echo �    (Coordination between the big ship and the destroyers is crutial)
echo �
echo �
echo �
echo �Additional Testers:
echo �    Don McClure
echo �    Matt Vella
echo �
echo �
echo �Final Notes:
echo �
echo �    If the game should crash for any reason, REBOOT the machine.
echo �The sound driver doesn't clean up after itself if the game crashes.
echo �
echo �    We have included a text file called TUTORIAL with the game. The
echo �tutorial goes step-by-step through playing the "Gunnery Practice"
echo �scenario and the "Operation Rheinubung" campaign games.
echo �
echo �    We hope you enjoy playing this game as much as we had making it.
echo �As we work on the scenarios and the scenario builder, we will
echo �continue to work on improving the system. If you have any comments or
echo �suggestions, write to me, Ken Humphries c/o Strategic Simulations,
pause
echo �Inc., 675 Almanor Ave., Suite 201, Sunnyvale, CA 94086. Watch out for
echo �those torpedoes...
echo �
echo �
echo �---Ken
echo �
echo �
echo ���