BEGIN X32Helga

CHAIN IF ~Global("X32HelgaSoDIntro","GLOBAL",1)~ THEN X32Helga Intro 
~Deepvein! I be willing to go along with them, if  they be having me. Will take more than a few mummies to tire me out.~
DO ~SetGlobal("X32HelgaSoDIntro","GLOBAL",2)~
== BDDEEP ~Ye sure? This has been a tiring battle.~
== X32Helga ~And it nay over, nor do I need the rest.~
END 
+~BeenInParty("X3Helga")~+ ~Helga, is that you?~ DO ~SetGlobal("X32HelgaInBG1","GLOBAL",1)~ + T1HelgaKnown 
+~!BeenInParty("X3Helga")~+ ~It's been some time, Helga.~ DO ~SetGlobal("X32HelgaInBG1","GLOBAL",1)~ + T1HelgaKnown 
+~!BeenInParty("X3Helga")~+ ~And who are you?~ + T1Introduce

CHAIN X32Helga T1HelgaKnown 
~It be good to see ye again, and no better place than a battle. As I said, if ye need my might, I will join ye.~
END 
++ ~I'd be glad to fight with you once more.~ + T1Join
++ ~Not right now.~ + T1No
++ ~I'm not interested in helping at all.~ + T1No

CHAIN X32Helga T1Introduce 
~I be Helga, devout of Haela Brightaxe. Ye could do no better than my aid down there.~
END 
++ ~I'd be glad to have your aid.~ + T1Join
++ ~Not right now.~ + T1No
++ ~I'm not interested in helping at all.~ + T1No

CHAIN X32Helga T1Join 
~Then let's see this done!~ 
DO ~AddJournalEntry(@102,INFO)
JoinParty()~ EXIT

CHAIN X32Helga T1No
~Bah!~ 
EXIT 

I_C_T BDSEMAHL 10 X32HelgaBDSEMAHL10 
== X32Helga IF ~!InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~A dwarf is nay so easily felled, Semahl!~
END 

// Helga Kicked
CHAIN IF ~OR(2)
AreaCheck("BD0120")
AreaCheck("BD0130")
GlobalGT("bd_joined","locals",0)~ THEN X32Helga o
~Ye leaving me here? I want in on the bloody fighting!~
END
++ ~Wait here, I'll come back.~ + o.1
+ ~OR(2)
!Range("ff_camp",999)
NextTriggerObject("ff_camp")
!IsOverMe("X3Helga")~ + ~Go back to the entrance for now.~ + o.2
++ ~I made an error. Stay with me.~ + n.3

CHAIN X32Helga o.1
~Bah.~
DO ~SetGlobal("bd_joined","locals",0)~ EXIT

CHAIN X32Helga o.2
~If ye say so.~
DO ~SetGlobal("bd_joined","locals",0)
SetGlobal("bd_npc_camp","locals",1) 
EscapeAreaMove("BD0120",802,1533,SE)~ EXIT

CHAIN IF ~OR(2)
AreaCheck("BD0120")
AreaCheck("BD0130")
Global("bd_joined","LOCALS",0)~ THEN X32Helga o.3
~Ye come around, then?~
END
++ ~Come along.~ + o.4
++ ~Stay here.~ + o.5

CHAIN X32Helga o.4
~Ha! To battle!~ 
DO ~JoinParty()~ EXIT

CHAIN X32Helga o.5
~Bah.~
EXIT

// Special Kick out 
CHAIN IF ~GlobalGT("bd_joined","locals",0)!Global("BD_DOD_QUEST_DONE","GLOBAL",1)~ THEN X32Helga n
~Ye nay need me? If so, I'll return to Deepvein's side.~
END 
++ ~Go then. I'll come find you if I need you.~ + n.4 
++ ~I've changed my mind. Rejoin me.~ + n.3 

CHAIN X32Helga n.4 
~Axes high, friend.~
DO ~SetGlobal("bd_joined","locals",0)EscapeAreaMove("BD1100",955,1772,SE)~ EXIT



//Normal Kick out
CHAIN IF ~GlobalGT("bd_joined","locals",0)Global("BD_DOD_QUEST_DONE","GLOBAL",1)~ THEN X32Helga n
~Bah. This it, then?~
END
+ ~GlobalGT("bd_npc_camp_chapter","global",1)
GlobalLT("bd_npc_camp_chapter","global",5)
OR(2)
!Range("ff_camp",999)
NextTriggerObject("ff_camp")
!IsOverMe("X3Helga")~ + ~Go back to camp. I'll find you there if I need you.~ DO ~SetGlobal("bd_npc_camp","locals",1)~ + n.1 
++ ~Just wait here for now.~ + n.2
++ ~I've changed my mind. Rejoin me.~ + n.3

CHAIN X32Helga n.1
~As ye say. Axes high!~
DO ~SetGlobal("bd_joined","locals",0)~ EXIT

CHAIN X32Helga n.2
~I be waiting, then.~
DO ~SetGlobal("bd_joined","locals",0)~ EXIT

CHAIN X32Helga n.3
~Now yer talking bloody sense.~
DO ~JoinParty()~ EXIT

CHAIN IF ~AreaCheck("bd4300")GlobalGT("bd_plot","global",585)~ THEN X3Helga SoDBattleOver 
~If this is the last series of battles of my career...I be bloody proud of them.~
EXIT 

 

//Rejoin or Initial rejected

CHAIN IF ~Global("bd_joined","LOCALS",0)!Global("BD_DOD_QUEST_DONE","GLOBAL",1)~ THEN X32Helga p
~Standing around this camp is not my idea of fun.~ [X3HeCamp]
~Take me with ye. Ye know ye could use me out there.~ [X3HeTake]
END
++ ~I'd have you along with me, if you're willing Helga.~ + p.0
++ ~I'm in need of your priestly aid. Come join me.~ + p.0
++ ~I can handle myself, thank you.~ + p.1 
++ ~Not at this time.~ + p.1

CHAIN X32Helga p.0
~Glorious! To battle!~
DO ~JoinParty()~ EXIT

CHAIN X32Helga p.1
~Bah.~
EXIT


