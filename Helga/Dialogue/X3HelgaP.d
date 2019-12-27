BEGIN X3HelgaP

// Player kicking out Helga.

IF ~Global("X3HelgaKickedOut","GLOBAL",0)~ kicked1
SAY ~Ye getting rid of me?~
++ ~I've changed my mind. Stay with me.~ DO ~JoinParty()~ EXIT
++ ~I am, let us part ways~ + kicked1A
++ ~Wait here for now.~ DO ~SetGlobal("X3HelgaKickedOut","GLOBAL",1)LeaveParty()~ EXIT
END

IF ~~ kicked1A 
SAY ~Bah. I'll be at my home in Beregost, next to Thunderhammer if ye change yer tune.~
IF ~~ DO ~SetGlobal("X3HelgaKickedOut","GLOBAL",1)EscapeAreaMove("AR3302",252,249,SW)~ EXIT 
END 

// Helga left because the were taking too long. 
IF ~Global("X3HelgaKickedOut","GLOBAL",1)Global("X3HelgaQuestTimerDone","GLOBAL",1)~ kicked2b
SAY ~I ain't find other help to do it myself, but if  ye come back to beg, I be nay joining ye until ye prove yerselves and see that ogre dead.~
+~Dead("X3HogreL")Global("X3HelgaQuest","GLOBAL",0)~+ ~I wish to let you know I've slain the ogre king.~ DO ~SetGlobal("X3HelgaQuestTimerDone","GLOBAL",2)AddJournalEntry(@3,QUEST_DONE)AddexperienceParty(600)SetGlobal("X3HelgaQuest","GLOBAL",1)~  + b2.kill 
++ ~Farewell, then.~ EXIT 
END 
// Helga previously kicked out, and not in party. 

IF ~Global("X3HelgaKickedOut","GLOBAL",1)!Global("X3HelgaQuestTimerDone","GLOBAL",1)~ kicked2
SAY ~Now there's a sight for my ol' eyes. Ye wanting me back, then?~
+~Dead("X3HogreL")Global("X3HelgaQuest","GLOBAL",0)~+ ~I wish to let you know I've slain the ogre king.~ DO ~AddJournalEntry(@3,QUEST_DONE)AddexperienceParty(600)SetGlobal("X3HelgaQuest","GLOBAL",1)~  + b2.kill 
+~OR(2)!Dead("X3HogreL")!Global("X3HelgaQuest","GLOBAL",0)~+ ~Join me.~ + b3.1
+~OR(2)!Dead("X3HogreL")!Global("X3HelgaQuest","GLOBAL",0)~+ ~Not at this time.~ + b3.2
END 

IF ~~ b3.1
SAY ~Well, what are we waiting for? To the cleaving!~
IF ~~ DO ~SetGlobal("X3HelgaKickedOut","GLOBAL",0) JoinParty()~ EXIT
END

IF ~~ b3.2
SAY ~Bah.~
IF ~~ EXIT
END

IF ~~ b2.kill 
SAY ~Hahaha! Noice one. Ye be made of stout stuff. Bloody jealous I wasn't there to do it myself.~
= ~If ye ever want a stout dwarf fighting along your side, just say the word.~
++ ~Why not join me now, then?~ + b3.1
++ ~Farewell.~ EXIT 
END 