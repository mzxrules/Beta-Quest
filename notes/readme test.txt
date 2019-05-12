Beta Quest 1.5

Test Build Notes: 
This build of Beta Quest 1.5 is J Emulator, with the pause screen lag fix applied, and does not work on N64 for reasons still unknown.
Do not distribute this to just anyone, as I'd like to not have a bunch of test builds floating around in case issues pop up.

Notable Changes:
RC B02: Spawning at the normal entrance points for the warp pads now plays an animation, making it easier to differentiate between the dungeon clear and warp song spawns. 

RC B01: Two of the Great Fairy fountains should now take you to Zelda, allowing you to obtain zelda's lullaby easier. Once you obtain zl, these entrances will then change to the Great Fairy fountain of Magic, then finally will be randomized per normal once magic is obtained. Leaving Zelda's Courtyard without getting lullaby will behave as if you've exited the Great Fairy Fountains proper. Note that for RBA purposes the hack checks the event flag for obtaining zl, not the item flag.

RC B01: There is now a temporal Child Trade Slot. This slot will appear only while in Hyrule Castle (the outer grounds) for the purpose of storing the Egg/Chicken, making it possible to wake up Talon after obtaining Zelda's Letter and beyond

RC B00: The randomizer has been rewritten. It now uses a 64 bit random number generator, instead of Ocarina of Time's 32 bit generator. The algorithm used to randomize the "shuffle" group of entrances has been tweaked in an attempt to make leave grotto -> spawn in grotto chains less likely.

RC B00: A few one-off spawns that I missed with v1 have been moved from the shuffle group to the randomize group.

RC B00: When you obtain Richard, the game will disable randomization. If you either try to leave the immediate area, or Richard stops following you (quest completed/on his own?), you will warp back to the main market square. 

RC B00: Fog Glitch should be patched.

RC B00: Any% can now only be completed by obtaining magic, light arrows (light arrow slot not empty), and must defeat ganondorf->ganon in sequence. To implement this change, reaching the entrance that randomizes to Ganondorf/touching the exit leading to Ganon will take you to the Royal Family's Tomb instead, improving odds of obtaining Sun's Song. Entering Ganondorf's room will become possible once light arrows/magic have been obtained.

RC B00: Dying or falling out of bounds in the "Sky Temple" now warps you to the entrance that was obscured by the easter egg

RC B00: Requiem CS graphics exception should be patched

RC B00: Crashes caused by attempting to wrong warp should be patched.

RC B00: Ice Cavern 1.2 has been imported, which should fix the weird camera angles that occur when standing within the alcoves in the block puzzle/rupee puzzle room of doom

Known Glitches: 

Attempting to enter Spirit Temple during the transition between getting the Silver Gauntlets and the Nabooru capture cutscene will reset the game.

Getting Song of Time before Zelda's Lullaby makes lullaby impossible.