BEGIN X3HelgaP

// Player kicking out Helga.

IF ~Global("X3HelgaKickedOut","GLOBAL",0)~ kicked1
SAY @0
++ @1 DO ~JoinParty()~ EXIT
++ @2 + kicked1A
++ @3 DO ~SetGlobal("X3HelgaKickedOut","GLOBAL",1)LeaveParty()~ EXIT
END

IF ~~ kicked1A 
SAY @4
IF ~~ DO ~SetGlobal("X3HelgaKickedOut","GLOBAL",1)EscapeAreaMove("%bg1_eet_symbol%3302",252,249,SW)~ EXIT 
END 

// Helga left because the were taking too long. 
IF ~Global("X3HelgaKickedOut","GLOBAL",1)Global("X3HelgaQuestTimerDone","GLOBAL",1)~ kicked2b
SAY @5
+~Dead("X3HogreL")Global("X3HelgaQuest","GLOBAL",0)~+ @6 DO ~SetGlobal("X3HelgaQuestTimerDone","GLOBAL",2)AddJournalEntry(@1003,QUEST_DONE)AddexperienceParty(600)SetGlobal("X3HelgaQuest","GLOBAL",1)~  + b2.kill 
++ @7 EXIT 
END 
// Helga previously kicked out, and not in party. 

IF ~Global("X3HelgaKickedOut","GLOBAL",1)!Global("X3HelgaQuestTimerDone","GLOBAL",1)~ kicked2
SAY @8
+~Dead("X3HogreL")Global("X3HelgaQuest","GLOBAL",0)~+ @6 DO ~AddJournalEntry(@1003,QUEST_DONE)AddexperienceParty(600)SetGlobal("X3HelgaQuest","GLOBAL",1)IncrementGlobal("X3HelgaAppChange","GLOBAL",9)~  + b2.kill 
+~OR(2)!Dead("X3HogreL")!Global("X3HelgaQuest","GLOBAL",0)~+ @9 + b3.1
+~OR(2)!Dead("X3HogreL")!Global("X3HelgaQuest","GLOBAL",0)~+ @10 + b3.2
END 

IF ~~ b3.1
SAY @11
IF ~~ DO ~SetGlobal("X3HelgaKickedOut","GLOBAL",0) JoinParty()~ EXIT
END

IF ~~ b3.2
SAY @12
IF ~~ EXIT
END

IF ~~ b2.kill 
SAY @13
= @14
++ @15 + b3.1
++ @16 EXIT 
END 