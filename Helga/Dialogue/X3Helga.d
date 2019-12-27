BEGIN X3Helga

CHAIN IF ~Global("X3HelgaSpawn","GLOBAL",1)~ THEN X3Helga b1NotDead 
~Heh, that all ye bloody fools got? Not half as tough as the ogres in the north.~
DO ~SetGlobal("X3HogreDead","GLOBAL",1)~
END 
++ ~You killed these ogres all on your own?~ + b1.Thanks 
++ ~Who are you?~ + b1.Who 
++ ~We're just passing through.~ + b1.Control 

CHAIN X3Helga b1.Thanks 
~Aye, been hunting these bastards...though they did a number on me themself. I nay be able to hunt their chieftain like this.~
EXTERN X3Helga b1.Who 

CHAIN X3Helga b1.Who 
~Name's Helga. Priest of Haela Brightaxe.~
END 
++ ~My name is <CHARNAME>, a pleasure.~ + b1.Quest
++ ~I see. Well, I better go.~ + b1.Go 
+~!Race(Player1,DWARF)~+ ~Priest of who?~ + b1.PriestA 
+~Race(Player1,DWARF)~+ ~Priest of who?~ + b1.PriestB

CHAIN X3Helga b1.Control 
~Pah. Perhaps ye wish to hear a proposition first?~
EXTERN X3Helga b1.Quest

CHAIN X3Helga b1.PriestA 
~Ye ain't a dwarf, so ye may not know.  She be the lady of the fray, of luck and hard bloody battle.~
EXTERN X3Helga b1.Quest 

CHAIN X3Helga b1.PriestB 
~Bloody hells. Ye ain't know Haela Brightaxe, Lady of the Fray, the Luckmaiden, the hard? Bah! Nay matter.~
EXTERN X3Helga b1.Quest 

CHAIN X3Helga b1.Quest 
~I be after these ogres' leader, their king ye know. Holds his domain north of a gnoll stronghold. It will be glorious and bloody, if ye want to take the task on yerself.~
== X3Helga ~Or if ye have me, I'll aid  ye in the battlefield meself!~
END 
++ ~Very well. Join us and we will see this ogre leader ended.~ + b1.YesYes 
++ ~I shall see about this ogre, though I've no desire for further company.~ + b1.Yes 
++ ~I've no interest. Find someone else to do your work.~ + b1.No

CHAIN X3Helga b1.Go 
~Now just wait one bloody moment!~
EXTERN X3Helga b1.Quest 

CHAIN X3Helga b1.YesYes 
~Let's get to it, then! I long for battle.~
DO ~AddJournalEntry(@1,QUEST)AddJournalEntry(@11,INFO)JoinParty()~ EXIT 

CHAIN X3Helga b1.Yes 
~Good luck out there. Ye need me, I'll be in my home in Beregost, next to Thunderhammer.~
DO ~EscapeAreaMove("AR3302",252,249,SW)AddJournalEntry(@1,QUEST)~ EXIT 

CHAIN X3Helga b1.No 
~Bah. Thought you were one with courage. You change yer mind and kill that thing, or ye need a good stout hammer, find me in my temporary home in Beregost, next to Thunderhammer.~
DO ~EscapeAreaMove("AR3302",252,249,SW)AddJournalEntry(@1,QUEST)~ EXIT

CHAIN IF ~Global("X3HogreDead","GLOBAL",1)~ THEN X3Helga b2 
~Ye again. What brings ye here?~
END 
+~Dead("X3HogreL")Global("X3HelgaQuest","GLOBAL",0)~+ ~I've slain the ogre king.~ + b2.kill 
+~OR(2)!Dead("X3HogreL")!Global("X3HelgaQuest","GLOBAL",0)~+ ~I came to ask if you would join me.~ + b2.join 
+~OR(2)!Dead("X3HogreL")!Global("X3HelgaQuest","GLOBAL",0)~+ ~Nothing. Farewell.~ EXIT 

CHAIN X3Helga b2.kill 
~Hahaha! Noice one. Ye be made of stout stuff. Bloody jealous I wasn't there to do it meself.~
== X3Helga ~If ye ever want a stout dwarf fighting along your side, just say the word.~
DO ~AddJournalEntry(@3, QUEST_DONE)AddexperienceParty(600)SetGlobal("X3HelgaQuest","GLOBAL",2)~ 
END 
++ ~Why not join me now, then?~ + b2.join 
++ ~Farewell.~ EXIT 

CHAIN X3Helga b2.join 
~Ha. Knew ye'd be back for me.~
== X3Helga ~Let's get to it, then! I long for battle.~
DO ~AddJournalEntry(@11,INFO)JoinParty()~ EXIT 
 

