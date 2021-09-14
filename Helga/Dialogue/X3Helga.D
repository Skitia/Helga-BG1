BEGIN X3Helga

CHAIN IF ~Global("X3HelgaSpawn","GLOBAL",1)~ THEN X3Helga b1NotDead 
@0
DO ~SetGlobal("X3HogreDead","GLOBAL",1)~
END 
++ @1 + b1.Thanks 
++ @2 + b1.Who 
++ @3 + b1.Control 

CHAIN X3Helga b1.Thanks 
@4
EXTERN X3Helga b1.Who 

CHAIN X3Helga b1.Who 
@5
END 
++ @6 + b1.Quest
++ @7 + b1.Go 
+~!Race(Player1,DWARF)~+ @8 + b1.PriestA 
+~Race(Player1,DWARF)~+ @8 + b1.PriestB

CHAIN X3Helga b1.Control 
@9
EXTERN X3Helga b1.Quest

CHAIN X3Helga b1.PriestA 
@10
EXTERN X3Helga b1.Quest 

CHAIN X3Helga b1.PriestB 
@11
EXTERN X3Helga b1.Quest 

CHAIN X3Helga b1.Quest 
@12
== X3Helga @13
END 
++ @14 + b1.YesYes 
++ @15 + b1.Yes 
++ @16 + b1.No

CHAIN X3Helga b1.Go 
@17
EXTERN X3Helga b1.Quest 

CHAIN X3Helga b1.YesYes 
@18
DO ~AddJournalEntry(@1,QUEST)AddJournalEntry(@11,INFO)JoinParty()~ EXIT 

CHAIN X3Helga b1.Yes 
@19
DO ~EscapeAreaMove("%bg1_eet_symbol%3302",252,249,SW)AddJournalEntry(@1,QUEST)~ EXIT 

CHAIN X3Helga b1.No 
@20
DO ~EscapeAreaMove("%bg1_eet_symbol%3302",252,249,SW)AddJournalEntry(@1,QUEST)~ EXIT

CHAIN IF ~Global("X3HogreDead","GLOBAL",1)~ THEN X3Helga b2 
@21
END 
+~Dead("X3HogreL")Global("X3HelgaQuest","GLOBAL",0)~+ @22 + b2.kill 
+~OR(2)!Dead("X3HogreL")!Global("X3HelgaQuest","GLOBAL",0)~+ @23 + b2.join 
+~OR(2)!Dead("X3HogreL")!Global("X3HelgaQuest","GLOBAL",0)~+ @24 EXIT 

CHAIN X3Helga b2.kill 
@25
== X3Helga @26
DO ~AddJournalEntry(@3, QUEST_DONE)AddexperienceParty(600)SetGlobal("X3HelgaQuest","GLOBAL",2)~ 
END 
++ @27 + b2.join 
++ @28 EXIT 

CHAIN X3Helga b2.join 
@29
== X3Helga @18
DO ~AddJournalEntry(@11,INFO)JoinParty()~ EXIT 
 

