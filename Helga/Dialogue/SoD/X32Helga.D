BEGIN X32Helga

CHAIN IF ~AreaCheck("bd4300")GlobalGT("bd_plot","global",585)~ THEN X3Helga SoDBattleOver 
@35
EXIT 

CHAIN IF ~Global("X32HelgaSoDIntro","GLOBAL",1)~ THEN X32Helga Intro 
@0
DO ~SetGlobal("X32HelgaSoDIntro","GLOBAL",2)~
== BDDEEP @1
== X32Helga @2
END 
+~BeenInParty("X3Helga")~+ @3 DO ~SetGlobal("X32HelgaInBG1","GLOBAL",1)~ + T1HelgaKnown 
+~!BeenInParty("X3Helga")~+ @4 DO ~SetGlobal("X32HelgaInBG1","GLOBAL",1)~ + T1HelgaKnown 
+~!BeenInParty("X3Helga")~+ @5 + T1Introduce

CHAIN X32Helga T1HelgaKnown 
@6
END 
++ @7 + T1Join
++ @8 + T1No
++ @9 + T1No

CHAIN X32Helga T1Introduce 
@10
END 
++ @11 + T1Join
++ @8 + T1No
++ @9 + T1No

CHAIN X32Helga T1Join 
@12 
DO ~AddJournalEntry(@71,INFO)
JoinParty()~ EXIT

CHAIN X32Helga T1No
@13 
EXIT 

I_C_T BDSEMAHL 10 X32HelgaBDSEMAHL10 
== X32Helga IF ~!InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @14
END 

// Helga Kicked
CHAIN IF ~OR(2)
AreaCheck("BD0120")
AreaCheck("BD0130")
GlobalGT("bd_joined","locals",0)~ THEN X32Helga o
@15
END
++ @16 + o.1
+ ~OR(2)
!Range("ff_camp",999)
NextTriggerObject("ff_camp")
!IsOverMe("X3Helga")~ + @17 + o.2
++ @18 + n.3

CHAIN X32Helga o.1
@19
DO ~SetGlobal("bd_joined","locals",0)~ EXIT

CHAIN X32Helga o.2
@20
DO ~SetGlobal("bd_joined","locals",0)
SetGlobal("bd_npc_camp","locals",1) 
EscapeAreaMove("BD0120",802,1533,SE)~ EXIT

CHAIN IF ~OR(2)
AreaCheck("BD0120")
AreaCheck("BD0130")
Global("bd_joined","LOCALS",0)~ THEN X32Helga o.3
@21
END
++ @22 + o.4
++ @23 + o.5

CHAIN X32Helga o.4
@24 
DO ~JoinParty()~ EXIT

CHAIN X32Helga o.5
@19
EXIT

// Special Kick out 
CHAIN IF ~GlobalGT("bd_joined","locals",0)!Global("BD_DOD_QUEST_DONE","GLOBAL",1)~ THEN X32Helga n
@25
END 
++ @26 + n.4 
++ @27 + n.3 

CHAIN X32Helga n.4 
@28
DO ~SetGlobal("bd_joined","locals",0)EscapeAreaMove("BD1100",955,1772,SE)~ EXIT



//Normal Kick out
CHAIN IF ~GlobalGT("bd_joined","locals",0)Global("BD_DOD_QUEST_DONE","GLOBAL",1)~ THEN X32Helga n
@29
END
+ ~GlobalGT("bd_npc_camp_chapter","global",1)
GlobalLT("bd_npc_camp_chapter","global",5)
OR(2)
!Range("ff_camp",999)
NextTriggerObject("ff_camp")
!IsOverMe("X3Helga")~ + @30 DO ~SetGlobal("bd_npc_camp","locals",1)~ + n.1 
++ @31 + n.2
++ @27 + n.3

CHAIN X32Helga n.1
@32
DO ~SetGlobal("bd_joined","locals",0)~ EXIT

CHAIN X32Helga n.2
@33
DO ~SetGlobal("bd_joined","locals",0)~ EXIT

CHAIN X32Helga n.3
@34
DO ~JoinParty()~ EXIT
 

//Rejoin or Initial rejected

CHAIN IF ~Global("bd_joined","LOCALS",0)!Global("BD_DOD_QUEST_DONE","GLOBAL",1)~ THEN X32Helga p
~Standing around this camp is not my idea of fun.~ [X3HeCamp]
~Take me with ye. Ye know ye could use me out there.~ [X3HeTake]
END
++ @37 + p.0
++ @38 + p.0
++ @39 + p.1 
++ @40 + p.1

CHAIN X32Helga p.0
@41
DO ~JoinParty()~ EXIT

CHAIN X32Helga p.1
@19
EXIT


