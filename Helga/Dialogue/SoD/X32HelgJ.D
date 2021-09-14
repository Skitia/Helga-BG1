BEGIN X32HELGJ

IF ~Global("X32HelgaTalk","GLOBAL",2)~ Talk1 // After Rest 
SAY @0
+~Global("X32HelgaInBG1","GLOBAL",1)~+ @1 + T1.A 
+~Global("X32HelgaInBG1","GLOBAL",1)~+ @2 + T1.A 
+~!Global("X32HelgaInBG1","GLOBAL",1)~+ @3 + T1.A 
+~!Global("X32HelgaInBG1","GLOBAL",1)~+ @4 + T1.B 
++ @5 + T1.X 
END 

IF ~~ T1.A 
SAY @6
IF ~~ + T1.P 
END 

IF ~~ T1.B 
SAY @7
IF ~~ + T1.P 
END 

IF ~~ T1.P 
SAY @8
+~Global("X32HelgaInBG1","GLOBAL",1)~+ @9 + T1.C 
+~Global("X32HelgaInBG1","GLOBAL",1)~+ @10 + T1.C1
+~!Global("X32HelgaInBG1","GLOBAL",1)~+ @11 + T1.C 
+~!Global("X32HelgaInBG1","GLOBAL",1)~+ @12 + T1.C1 
++ @13 + T1.X 
END 

IF ~~ T1.C1 
SAY @14 
+~CheckStatLT(Player1,50,LORE)~+ @15 + T1.D 
+~CheckStatGT(Player1,49,LORE)~+ @16 + T1.E
++ @17 + T1.Z 
END 

IF ~~ T1.C 
SAY @18
+~CheckStatLT(Player1,50,LORE)~+ @15 + T1.D 
+~CheckStatGT(Player1,49,LORE)~+ @16 + T1.E
++ @19 + T1.Z 
END 

IF ~~ T1.D 
SAY @20
= @21 
++ @22 + T1.Z
++ @23 + T1.F 
++ @24 + T1.Z 
END 

IF ~~ T1.E 
SAY @25
IF ~~ + T1.D 
END 

IF ~~ T1.F 
SAY @26
= @27
IF ~~ DO ~SetGlobalTimer("X32HelgaGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32HelgaRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32HelgaTalk","GLOBAL",1)RestParty()~ EXIT 
END

IF ~~ T1.X 
SAY @28 
IF ~~ DO ~SetGlobalTimer("X32HelgaGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32HelgaRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32HelgaTalk","GLOBAL",1)RestParty()~ EXIT 
END

IF ~~ T1.Z 
SAY @29 
IF ~~ DO ~SetGlobalTimer("X32HelgaGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32HelgaRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32HelgaTalk","GLOBAL",1)RestParty()~ EXIT 
END

IF ~Global("X32HelgaTalk","GLOBAL",4)~ THEN Talk2 
SAY @30
++ @31 + T2.A 
++ @32 + T2.B 
++ @33 + T2.C 
END

IF ~~ T2.A 
SAY @34
= @35
++ @36 + T2.D 
++ @37 + T2.E 
++ @38 + T2.E
END 


IF ~~ T2.B
SAY @39
IF ~~ + T2.A 
END 

IF ~~ T2.C 
SAY @40
IF ~~ + T2.A 
END 

IF ~~ T2.D 
SAY @41
IF ~~ + T2.H 
END 

IF ~~ T2.E 
SAY @42
IF ~~ + T2.G 
END 

IF ~~ T2.F
SAY @43
++ @44 + T2.G 
++ @45 + T2.H 
++ @46 + T2.I 
END 

IF ~~ T2.G 
SAY @47
IF ~~ + T2.H 
END 

IF ~~ T2.H 
SAY @48
= @49 
++ @50 + T2.J 
++ @51 + T2.K 
++ @52 + T2.L 
END 

IF ~~ T2.I 
SAY @53
IF ~~ DO ~SetGlobalTimer("X32HelgaGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32HelgaRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32HelgaTalk","GLOBAL",1)RestParty()~ EXIT 
END

IF ~~ T2.J 
SAY @54
IF ~~ DO ~SetGlobalTimer("X32HelgaGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32HelgaRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32HelgaTalk","GLOBAL",1)RestParty()~ EXIT 
END

IF ~~ T2.K 
SAY @55
IF ~~ DO ~SetGlobalTimer("X32HelgaGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32HelgaRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32HelgaTalk","GLOBAL",1)RestParty()~ EXIT 
END

IF ~~ T2.L 
SAY @56
IF ~~ DO ~SetGlobalTimer("X32HelgaGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32HelgaRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32HelgaTalk","GLOBAL",1)RestParty()~ EXIT 
END
 



IF ~Global("X32HelgaTalk","GLOBAL",6)~ THEN Talk3 
SAY @57
++ @58 + T3.A 
++ @59 + T3.B  
++ @60 + T3.C 
END  

IF ~~ T3.A 
SAY @61
IF ~~ + T3.D 
END 

IF ~~ T3.B 
SAY @62
IF ~~ + T3.D 
END 

IF ~~ T3.C 
SAY @63
IF ~~ + T3.D 
END 

IF ~~ T3.D 
SAY @64
++ @65 + T3.E 
++ @66 + T3.E 
++ @67 + T3.G 
END 

IF ~~ T3.E 
SAY @68
IF ~~ + T3.F 
END 

IF ~~ T3.F 
SAY @69
IF ~~ DO ~SetGlobalTimer("X32HelgaGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32HelgaRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32HelgaTalk","GLOBAL",1)RestParty()~ EXIT 
END

IF ~~ T3.G 
SAY @70
IF ~~ + T3.F 
END 


IF ~Global("X32HelgaTalk","GLOBAL",8)~ THEN Talk4 
SAY @71
++ @72 DO ~IncrementGlobal("X32HelgaTalk","GLOBAL",1)~ +  T4.A 
++ @73 DO ~IncrementGlobal("X32HelgaTalk","GLOBAL",1)~ + T4.B 
++ @74 DO ~IncrementGlobal("X32HelgaTalk","GLOBAL",1)~ + T4.C 
END 

IF ~~ T4.A 
SAY @75
IF ~~ + T4.D 
END 
 
IF ~~ T4.B 
SAY @76
IF ~~ + T4.D 
END 

IF ~~ T4.C 
SAY @77
IF ~~ + T4.D 
END 

IF ~~ T4.D 
SAY @78
++ @79  + T4.E 
++ @80 + T4.F 
++ @81 + T4.G 
END 

IF ~~ T4.E 
SAY @82
= @83
++ @84 + T4.H
++ @85 + T4.I 
++ @81 + T4.G 
END 

IF ~~ T4.F 
SAY @86
= @87
++ @84 + T4.H
++ @85 + T4.I 
++ @81 + T4.G 
END 

IF ~~ T4.G 
SAY @88
IF ~~ + T4.Final 
END 

IF ~~ T4.H 
SAY @89
IF ~~ + T4.Final 
END 

IF ~~ T4.I 
SAY @90
IF ~~ + T4.Final 
END 

IF ~~ T4.Final 
SAY @91
++ @92 + T4.1 
++ @93 + T4.1 
++ @94  + T4.1 
END  

// THRIX

IF ~Global("X32HelgSacrifice","bd4500",1)~ ThrixTalk0
SAY @95
+ ~!Global("X32_thrix_mark_Helga","global",1)~ + @96 DO ~SetGlobal("X32HelgSacrifice","bd4500",2)~ + ThrixTalk2
+ ~Global("X32_thrix_mark_Helga","global",1)~ + @97 DO ~SetGlobal("X32HelgSacrifice","bd4500",2)~ + ThrixTalk1
+ ~!Global("X32_thrix_mark_Helga","global",1)~ + @98 DO ~SetGlobal("X32HelgSacrifice","bd4500",2)~ + ThrixTalk3
+ ~Global("X32_thrix_mark_Helga","global",1)~ + @98 DO ~SetGlobal("X32HelgSacrifice","bd4500",2)~ + ThrixTalk1
+ ~!Global("X32_thrix_mark_Helga","global",1)~ + @99 DO ~SetGlobal("X32HelgSacrifice","bd4500",2)~ + ThrixTalk4
+ ~Global("X32_thrix_mark_Helga","global",1)~ + @99 DO ~SetGlobal("X32HelgSacrifice","bd4500",2)~ + ThrixTalk1
END

IF ~~ ThrixTalk1
 SAY @100
IF ~~ EXIT
END

IF ~~ ThrixTalk2
 SAY @101
IF ~~ + ThrixTalk6
END

IF ~~ ThrixTalk3
 SAY @102
IF ~~ + ThrixTalk6
END

IF ~~ ThrixTalk4
 SAY @103
IF ~~ EXIT
END

IF ~~ ThrixTalk6
 SAY @104
IF ~~ EXIT
END


CHAIN X32HelgJ T4.1 
@105 
END
IF ~IsValidForPartyDialogue("Minsc")~ EXTERN BDMINSCJ T4.M
IF ~!IsValidForPartyDialogue("Minsc")~ DO ~RestParty()~ EXIT 


CHAIN BDMINSCJ T4.M 
@106
DO ~RestParty()~ EXIT 


// Dungeon one liner 

CHAIN IF ~Global("X32HelgaSoDUR","GLOBAL",1)~ THEN X32HelgJ UROneLiner 
@107
DO ~SetGlobal("X32HelgaSoDUR","GLOBAL",2)~
EXIT

CHAIN IF ~Global("X32HelgaSoDQD","GLOBAL",1)~ THEN X32HelgJ HelgQDone 
@108
DO ~SetGlobal("X32HelgaSoDQD","GLOBAL",2)~
END 
++ @109 + HQD.1
++ @110 + HQD.2
++ @111 + HQD.3

CHAIN X32HelgJ HQD.1 
@112
EXIT 

CHAIN X32HelgJ HQD.2
@113
EXTERN X32HelgJ HQD.1 

CHAIN X32HelgJ HQD.3
@114
EXTERN X32HelgJ HQD.1 

// BDSEMAHL 

// To allow a good party to kill him, we're delaying Helga's interjection until they make their first dialogue choice pick.
INTERJECT BDSEMAHL 6 X32HelgaBDSEMAHL5
== X32HelgJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @115
EXTERN BDSEMAHL 7

// Helga has this line in her regular dialogue file in case she is not in the party.
I_C_T BDSEMAHL 10 X32HelgaBDSEMAHL10 
== X32HelgJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @116
END

// Reaction to kill choice. 
I_C_T BDSEMAHL 5 X32HelgaBDSEMAHL5 
== X32HELGJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @117
== BDSEMAHL @118
END 

I_C_T BDDEEP 39 X32HelgaBDDEEP39 
== X32HELGJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @119
== BDDEEP @120
END 

// Schael

EXTEND_TOP BDSCHAEL 40 #3
+ ~OR(2)
Global("SOD_fromimport","global",1)
BeenInParty("X3Helga")
Global("X32HelgaSchael","GLOBAL",0)~ + @121 DO ~SetGlobal("X32HelgaSchael","GLOBAL",1)~ EXTERN BDSCHAEL bdschaelHelgaRecall
END

CHAIN BDSCHAEL bdschaelHelgaRecall
@122
== BDSCHAEL @123
COPY_TRANS BDSCHAEL 40

// Takos

I_C_T BDTAKOS 11 X32HelgaBDTAKOS11 
== X32HELGJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @124
END

// Deepvein 

ADD_TRANS_ACTION BDDEEP BEGIN 12 END BEGIN END ~ActionOverride("X3Helga",LeaveParty())ActionOverride("X3Helga",Enemy())ActionOverride("X3Helga",SetGlobal("bd_joined","locals",0))
    ActionOverride("X3Helga",ChangeAIScript("BDFCLE01",GENERAL))ActionOverride("X3Helga",ChangeAIScript("BDDCLER",CLASS))ActionOverride("X3Helga",ChangeAIScript("BDSHOUT",RACE))~

INTERJECT BDDEEP 57 X32HelgaBDDEEP57A
== X32HelgJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)!Dead("bdsemahl")  
Global("BD_DOD_SAVED_SEMAHL","GLOBAL",1)
Global("BD_DOD_SAW_SEMAHL_INTERJECT","LOCALS",0)~ THEN @125
EXTERN BDSEMAHL 1	

INTERJECT BDDEEP 57 X32HelgaBDDEEP57B
== X32HelgJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)
OR(3)
Dead("BDSEMAHL")  
Global("BD_DOD_SAVED_SEMAHL","GLOBAL",0)
Global("BD_DOD_SAW_SEMAHL_INTERJECT","LOCALS",1)~ THEN @125
EXTERN BDDEEP 63

INTERJECT BDDEEP 69 X32HelgaBDDEEP69A
== X32HelgJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)!Dead("bdsemahl")  
Global("BD_DOD_SAVED_SEMAHL","GLOBAL",1)
Global("BD_DOD_SAW_SEMAHL_INTERJECT","LOCALS",0)~ THEN @125
EXTERN BDSEMAHL 2	

INTERJECT BDDEEP 69 X32HelgaBDDEEP69B
== X32HelgJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)
OR(3)
Dead("BDSEMAHL")  
Global("BD_DOD_SAVED_SEMAHL","GLOBAL",0)
Global("BD_DOD_SAW_SEMAHL_INTERJECT","LOCALS",1)~ THEN @125
EXTERN BDDEEP 77

I_C_T BDDEEP 81 X32HelgaBDDEEP81 
== X32HELGJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @126
== BDDEEP @127
END

I_C_T BDDEEP 82 X32HelgaBDDEEP82 
== X32HELGJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @126
== BDDEEP @127
END


I_C_T BDCOLDH 2 X32HelgaBDCOLDH2 
== X32HELGJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @128
== BDCOLDH @129
END

I_C_T BDCOLDH 17 X32HelgaBDCOLDH17
== X32HELGJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @130 
END 

I_C_T BDCOLDH 19 X32HElgaBDCOLDH19
== X32HelgJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @131
DO ~LeaveParty()Enemy()SetGlobal("bd_joined","locals",0)ChangeAIScript("BDFCLE01",GENERAL)ChangeAIScript("BDDCLER",CLASS)~
END 

// Jegg 
I_C_T BDJEGG 12 X32HelgaBDJEGG12 
== X32HelgJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @132
END 

// Khalid Bridgefort
I_C_T BDKHALID 56  X32HelgaBDKHALID56
== X32HelgJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @133
END

I_C_T BDJUNIA 33 X32HelgaBDJUNIA33 
== X32HelgJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @134
END

// Helvda 

I_C_T BDHELVDA 7 X32HelgaBDHELVDA7
== X32HelgJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @135
END

// Morlis 

EXTEND_TOP BDMORLIS 4 #4 
+ ~IsValidForPartyDialogue("X3Helga")~ + @136 EXTERN X32HelgJ bdMorlis4
END 

CHAIN X32HelgJ bdMorlis4
@137
== BDMORLIS @138 
== X32HelgJ @139
DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",2)
SetGlobal("bd_sdd301_morlis_skill","global",2)~
EXTERN BDMORLIS 6

EXTEND_TOP BDCLOVIS 3 #3
+ ~IsValidForPartyDialogue("X3Helga")~ + @140 DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",2)
SetGlobal("bd_sdd301_clovista_skill","global",2)~ EXTERN X32HelgJ BDCLOVIS3 
END 

// Hyreth 

EXTEND_TOP BDHYRETH 0 #5 
+ ~IsValidForPartyDialogue("X3Helga")~ + @141 EXTERN X32HelgJ BDHyreth0
END 

CHAIN X32HelgJ BDHyreth0 
@142
EXTERN BDHhyreth 2 

EXTEND_TOP BDHYRETH 2 #5 
+ ~IsValidForPartyDialogue("X3Helga")~ + @143 EXTERN X32HelgJ BDHyreth2 
END 

CHAIN X32HelgJ BDHyreth2
@144
EXTERN BDHhyreth 3 

EXTEND_TOP BDHYRETH 4 #5 
+ ~IsValidForPartyDialogue("X3Helga")~ + @145 EXTERN X32HelgJ BDHyreth4
END 

CHAIN X32HelgJ BDHyreth4
@146
EXTERN BDHhyreth 6 

EXTEND_TOP BDHYRETH 6 #5
+~IfValidForPartyDialogue("X3Helga")  // X3Helga
OR(8)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)  // SPPR103.SPL (Cure Light Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_MEDIUM_WOUNDS)  // SPPR315.SPL (Cure Medium Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS)  // SPPR401.SPL (Cure Serious Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)  // SPPR502.SPL (Cure Critical Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_HEAL)  // SPPR607.SPL (Heal)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_MASS_CURE)  // SPPR514.SPL (Mass Cure)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_NEUTRALIZE_POISON)  // SPPR404.SPL (Neutralize Poison)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_AID)  // SPPR201.SPL (Aid)~+ @147 DO ~SetGlobal("BD_WOUNDED_ZEALOT","BD3000",2)
SetGlobal("BD_WOUNDED_ZEALOT_X3Helga","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("bdsdd304",TRUE)~ EXIT
END 

EXTEND_TOP BDHYRETH 7 #5
+~IfValidForPartyDialogue("X3Helga")  // X3Helga
OR(8)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)  // SPPR103.SPL (Cure Light Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_MEDIUM_WOUNDS)  // SPPR315.SPL (Cure Medium Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS)  // SPPR401.SPL (Cure Serious Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)  // SPPR502.SPL (Cure Critical Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_HEAL)  // SPPR607.SPL (Heal)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_MASS_CURE)  // SPPR514.SPL (Mass Cure)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_NEUTRALIZE_POISON)  // SPPR404.SPL (Neutralize Poison)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_AID)  // SPPR201.SPL (Aid)~+ @147 DO ~SetGlobal("BD_WOUNDED_ZEALOT","BD3000",2)
SetGlobal("BD_WOUNDED_ZEALOT_X3Helga","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("bdsdd304",TRUE)~ EXIT
END 

EXTEND_TOP BDHYRETH 8 #5
+~IfValidForPartyDialogue("X3Helga")  // X3Helga
OR(8)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)  // SPPR103.SPL (Cure Light Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_MEDIUM_WOUNDS)  // SPPR315.SPL (Cure Medium Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS)  // SPPR401.SPL (Cure Serious Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)  // SPPR502.SPL (Cure Critical Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_HEAL)  // SPPR607.SPL (Heal)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_MASS_CURE)  // SPPR514.SPL (Mass Cure)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_NEUTRALIZE_POISON)  // SPPR404.SPL (Neutralize Poison)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_AID)  // SPPR201.SPL (Aid)~+ @147 DO ~SetGlobal("BD_WOUNDED_ZEALOT","BD3000",2)
SetGlobal("BD_WOUNDED_ZEALOT_X3Helga","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
ApplyDamagePercent(Player1,20,CRUSHING)
ActionOverride(Player1,SetSequence(SEQ_DAMAGE))
SmallWait(5)
StartCutSceneEx("bdsdd304",TRUE)~ EXIT
END 

EXTEND_TOP BDHYRETH 9 #5
+~IfValidForPartyDialogue("X3Helga")  // X3Helga
OR(8)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)  // SPPR103.SPL (Cure Light Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_MEDIUM_WOUNDS)  // SPPR315.SPL (Cure Medium Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS)  // SPPR401.SPL (Cure Serious Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)  // SPPR502.SPL (Cure Critical Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_HEAL)  // SPPR607.SPL (Heal)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_MASS_CURE)  // SPPR514.SPL (Mass Cure)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_NEUTRALIZE_POISON)  // SPPR404.SPL (Neutralize Poison)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_AID)  // SPPR201.SPL (Aid)~+ @147 DO ~SetGlobal("BD_WOUNDED_ZEALOT","BD3000",2)
SetGlobal("BD_WOUNDED_ZEALOT_X3Helga","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
ApplyDamagePercent(Player1,20,CRUSHING)
ActionOverride(Player1,SetSequence(SEQ_DAMAGE))
SmallWait(5)
StartCutSceneEx("bdsdd304",TRUE)~ EXIT
END 

EXTEND_TOP BDHYRETH 10 #5
+~IfValidForPartyDialogue("X3Helga")  // X3Helga
OR(8)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)  // SPPR103.SPL (Cure Light Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_MEDIUM_WOUNDS)  // SPPR315.SPL (Cure Medium Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS)  // SPPR401.SPL (Cure Serious Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)  // SPPR502.SPL (Cure Critical Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_HEAL)  // SPPR607.SPL (Heal)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_MASS_CURE)  // SPPR514.SPL (Mass Cure)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_NEUTRALIZE_POISON)  // SPPR404.SPL (Neutralize Poison)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_AID)  // SPPR201.SPL (Aid)~+ @147 DO ~SetGlobal("BD_WOUNDED_ZEALOT","BD3000",2)
SetGlobal("BD_WOUNDED_ZEALOT_X3Helga","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("bdsdd304",TRUE)~ EXIT
END 
EXTEND_TOP BDHYRETH 8 #5
+~IfValidForPartyDialogue("X3Helga")  // X3Helga
OR(8)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)  // SPPR103.SPL (Cure Light Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_MEDIUM_WOUNDS)  // SPPR315.SPL (Cure Medium Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS)  // SPPR401.SPL (Cure Serious Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)  // SPPR502.SPL (Cure Critical Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_HEAL)  // SPPR607.SPL (Heal)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_MASS_CURE)  // SPPR514.SPL (Mass Cure)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_NEUTRALIZE_POISON)  // SPPR404.SPL (Neutralize Poison)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_AID)  // SPPR201.SPL (Aid)~+ @147 DO ~SetGlobal("BD_WOUNDED_ZEALOT","BD3000",2)
SetGlobal("BD_WOUNDED_ZEALOT_X3Helga","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
ApplyDamagePercent(Player1,20,CRUSHING)
ActionOverride(Player1,SetSequence(SEQ_DAMAGE))
SmallWait(5)
StartCutSceneEx("bdsdd304",TRUE)~ EXIT 
END 
EXTEND_TOP BDHYRETH 12 #5
+~IfValidForPartyDialogue("X3Helga")  // X3Helga
OR(8)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)  // SPPR103.SPL (Cure Light Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_MEDIUM_WOUNDS)  // SPPR315.SPL (Cure Medium Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS)  // SPPR401.SPL (Cure Serious Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)  // SPPR502.SPL (Cure Critical Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_HEAL)  // SPPR607.SPL (Heal)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_MASS_CURE)  // SPPR514.SPL (Mass Cure)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_NEUTRALIZE_POISON)  // SPPR404.SPL (Neutralize Poison)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_AID)  // SPPR201.SPL (Aid)~+ @147 DO ~SetGlobal("BD_WOUNDED_ZEALOT","BD3000",1)
SetGlobal("BD_WOUNDED_ZEALOT_X3Helga","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
ApplyDamagePercent(Player1,20,CRUSHING)
ActionOverride(Player1,SetSequence(SEQ_DAMAGE))
SmallWait(5)
StartCutSceneEx("bdsdd304",TRUE)~ EXIT
END 
// Uncommon Cold 

EXTEND_TOP BDYESTIM 1
+~IfValidForPartyDialogue("X3Helga")~+  @148 DO ~SetGlobal("bd_patient_yestimell","global",2)
IncrementGlobal("bd_sdd302_death_count","global",-1)~ EXTERN X32HelgJ BDYESTIM1 // X3Helga
END 
CHAIN X32HelgJ BDYESTIM1
@149 
DO ~IncrementGlobal("bd_sdd302_patients_talked","bd3000",1)
ActionOverride("bdyestim",Polymorph(FIGHTER_MALE_HUMAN))
ChangeSpecifics("bdyestim",THIEF)  // Yestimell
ActionOverride("bdyestim",Enemy())
ActionOverride("bdyestim",Attack([PC]))~ 
EXIT 

EXTEND_TOP BDZIDRAN 1 
+~IfValidForPartyDialogue("X3Helga")~+  @150 DO ~SetGlobal("bd_patient_zidrand","global",2)
IncrementGlobal("bd_sdd302_death_count","global",-1)~ EXTERN X32HelgJ BDZIDRAN1 
END 
CHAIN X32HelgJ BDZIDRAN1 
@151
EXTERN BDZIDRAN 2

EXTEND_TOP BDXERRA 1 
+~IfValidForPartyDialogue("X3Helga")~+  @150 DO ~SetGlobal("bd_patient_xerra","global",2)
IncrementGlobal("bd_sdd302_death_count","global",-1)~ EXTERN X32HelgJ BDXERRA1 
END 
CHAIN X32HelgJ BDXERRA1 
@152 
EXTERN BDXERRA 2 


EXTEND_TOP BDDOSIA 13 
+~IfValidForPartyDialogue("X3Helga")~+  @153  EXTERN X32HelgJ BDDOSIA13 
END 
CHAIN X32HelgJ BDDOSIA13 
@154
DO ~AddJournalEntry(61440,QUEST)  
SetGlobal("bd_sdd302_uncommon_cold","global",2)
SetGlobal("bd_sdd302_blackthorn","global",1)~ 
EXTERN BDDOSIA 16  




CHAIN X32HelgJ BDCLOVIS3 
@155
== BDCLOVIS @156
== X32HelgJ @157
EXTERN BDCLOVIS 5

// Murs 

I_C_T BDMURS 33 X32HelgaBDMURS14 
== X32HelgJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @158
END

I_C_T BDHEPHER 3 X32HelgaBDHepher3 
== X32HelgJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @159
END

I_C_T BDHEPHER 4 X32HelgaBDHepher4 
== X32HelgJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @159
END

// Thrix the Profane

EXTEND_BOTTOM BDTHRIX 21
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 22 #3
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 23 #5
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 24 #8
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 26
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_TOP BDTHRIX 27 #3
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 28 #5
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_TOP BDTHRIX 29 #8
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 30
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 31 #3
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 32 #5
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 33 #8
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 34
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 35 #3
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 36 #5
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 37 #8
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 38
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 39 #3
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 40 #5
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 41 #8
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 42
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 43 #3
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 44 #5
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 45 #8
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 46
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 47 #3
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 48 #5
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 49 #8
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 50
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 51 #3
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 52 #5
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 53 #8
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 54
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 55 #3
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 56 #5
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 57 #8
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 58
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 59 #3
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 60 #5
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 61 #8
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 62
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 63 #3
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 64 #5
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 65 #8
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 66
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 67 #3
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 68 #5
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 69 #8
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 70
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 71 #3
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 72 #5
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 73 #8
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 74
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 75 #3
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 76 #5
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 77 #8
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 78
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 79 #3
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 80 #5
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 81 #8
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 82
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 83 #3
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 84 #5
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 85 #8
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 90
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 91 #3
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 92 #5
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 93 #8
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

CHAIN BDTHRIX ThrixWager1
@160
END
++ @161 DO ~SetGlobal("X32HelgaSacrifice","bd4500",1) SetGlobal("bd_thrix_sacrifice_companion","global",1)~ EXTERN BDTHRIX 116
++ @162 DO ~SetGlobal("X32_Saved_Helga","bd4500",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ EXTERN X32HelgJ ThrixWager2
++ @163 EXTERN BDTHRIX 113
++ @164 EXTERN BDTHRIX 12

CHAIN X32HelgJ ThrixWager2
@165
== BDTHRIX @166
END
IF ~RandomNum(4,1)~ EXTERN BDTHRIX 78
IF ~RandomNum(4,2)~ EXTERN BDTHRIX 79
IF ~RandomNum(4,3)~ EXTERN BDTHRIX 80
IF ~RandomNum(4,4)~ EXTERN BDTHRIX 81

EXTEND_BOTTOM BDTHRIX 118
IF ~Global("X32HelgaSacrifice","bd4500",1)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 119
IF ~Global("X32HelgaSacrifice","bd4500",1)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 120
IF ~Global("X32HelgaSacrifice","bd4500",1)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 121
IF ~Global("X32HelgaSacrifice","bd4500",1)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 122
IF ~Global("X32HelgaSacrifice","bd4500",1)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager4
END

CHAIN BDTHRIX ThrixWager4
@167
END
++ @168 DO ~SetGlobal("X32_thrix_mark_Helga","global",1)~ EXTERN X32HelgJ ThrixWager5
++ @169 EXTERN BDTHRIX 10

CHAIN X32HelgJ ThrixWager5
@170
DO ~SetGlobal("bd_thrix_plot","global",11)~ EXTERN BDTHRIX 140



APPEND X32HELGJ 

IF ~!Global("BD_DOD_QUEST_DONE","GLOBAL",1)Global("X32HelgaSoDQL","GLOBAL",1)~ Departure 
SAY @171
++ @172 + DepartureA
++ @173 + DepartureB
++ @174 + DepartureB 
END 

IF ~~ DepartureA 
SAY @175 
IF ~~ DO ~SetGlobal("bd_joined","locals",0)LeaveParty()SetGlobal("X32HelgaSoDQL","GLOBAL",0)EscapeAreaMove("BD1100",955,1772,SE)~ EXIT 
END 

IF ~~ DepartureB 
SAY @176
IF ~~ DO ~SetGlobal("bd_joined","locals",0)LeaveParty()SetGlobal("X32HelgaSoDQL","GLOBAL",0)EscapeAreaMove("BD1100",955,1772,SE)~ EXIT  
END 

IF ~IsGabber(Player1)AreaCheck("bd4300")GlobalGT("bd_plot","global",585)~ THEN BEGIN SoD.BattleOver 
SAY @177
IF ~~ EXIT 
END 

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY])OR(2)AreaCheck("BD0120")AreaCheck("BD0130")~ THEN BEGIN Helga.PIDCrypt
SAY @178
IF ~~ EXIT 
END 

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY])~ THEN BEGIN Helga.PID 
 SAY  @179  
 + ~HPPercentGT(Myself,74)RandomNum(5,1)~ + @180 + Helga.PHowAreYou1 // @180
 + ~HPPercentGT(Myself,74)RandomNum(5,2)~ + @180 + Helga.PHowAreYou2 // @180
 + ~HPPercentGT(Myself,74)RandomNum(5,3)~ + @180 + Helga.PHowAreYou3 // @180
 +~HPPercentLT(Myself,75)HPPercentGT(Myself,49)RandomNum(2,1)~+ @180 + Helga.PHowAreYouInjured // @180 //(Under 75%, Over 50%)
 +~HPPercentLT(Myself,50)~+ @180 + Helga.PHowAreYouHurt // @180 //(Under 50%)
 +~HPPercentGT(Myself,74)RandomNum(5,4)~+ @180 + Helga.PHowAreYou4 // @180
 +~HPPercentGT(Myself,74)RandomNum(5,5)~+ @180 + Helga.PHowAreYou5 // @180
 +~HPPercentLT(Myself,75)HPPercentGT(Myself,49)RandomNum(2,2)~+ @180 + Helga.PHowAreYouInjured2  // @180
 ++ @181  + Helga.PTalk // @181 
 ++ @182  EXIT // @182 
 END 

IF ~~ Helga.PHowAreYou1
SAY @183 
IF ~~ EXIT  
END 

IF ~~ Helga.PHowAreYou2
SAY @184 
IF ~~ EXIT  
END

IF ~~ Helga.PHowAreYou3
SAY @185 
IF ~~ EXIT  
END

IF ~~ Helga.PHowAreYouInjured
SAY @186 
IF ~~ EXIT  
END

IF ~~ Helga.PHowAreYouHurt
SAY @187 
IF ~~ EXIT  
END

IF ~~ Helga.PHowAreYou4
SAY @188
IF ~~ EXIT  
END

IF ~~ Helga.PHowAreYou5
SAY @189
IF ~~ EXIT  
END

IF ~~ Helga.PHowAreYouInjured2
SAY @190
IF ~~ EXIT  
END


  
IF ~~ Helga.PTalk 
SAY  @179  
/*Options will  vary as the game goes on.*/ 
/*Chapter Advice, these repeat.*/ 
+~Global("Chapter","GLOBAL",1)~+ @191 + Helga.PC1Advice // @191
+~Global("Chapter","GLOBAL",2)~+ @191 + Helga.PC2Advice // @191
+~Global("Chapter","GLOBAL",3)~+ @191 + Helga.PC3Advice // @191
+~Global("Chapter","GLOBAL",4)~+ @191 + Helga.PC4Advice // @191
+~Global("Chapter","GLOBAL",5)~+ @191 + Helga.PC5Advice // @191
+~Global("Chapter","GLOBAL",6)~+ @191 + Helga.PC6Advice // @191
+~Global("Chapter","GLOBAL",7)~+ @191 + Helga.PC7Advice // @191
// Companion Thoughts 
+~NumInPartyAliveGT(2)~+ @192 + Helga.PCompanionThoughts // @192 
+~ReputationGT(Player1,5)~+ @193 + Em.Me1 // @193
+~ReputationLT(Player1,6)~+ @193 + Em.Me2 // @193
// Dialogue From Talk Expansions. These fire once. 
+~Global("X3HelgaHaelaTopic","GLOBAL",0)~+ @194 DO ~SetGlobal("X3HelgaHaelaTopic","GLOBAL",1)~ + Helga.PT2Haela 
+~GlobalGT("X32HelgaTalk","GLOBAL",8)Global("X3HelgaHusbandTopic","GLOBAL",0)~+ @195 DO ~SetGlobal("X3HelgaHusbandTopic","GLOBAL",1)~ + Helga.PT3Husband
+~Global("X3HelgaHomeTopic","GLOBAL",0)~+ @196 DO ~SetGlobal("X3HelgaHomeTopic","GLOBAL",1)~ + Helga.PT1
+~GlobalGT("Chapter","GLOBAL",8)Global("X3HelgaOverTopic","GLOBAL",0)~+ @197 DO ~SetGlobal("X3HelgaOverTopic","GLOBAL",1)~ + Helga.PT4 
++ @198 EXIT 
++ @199 EXIT 
END 

IF ~~ Helga.PC1Advice 
SAY @200
IF ~~ EXIT 
END 

IF ~~ Helga.PC2Advice 
SAY @201
IF ~~ EXIT 
END 

IF ~~ Helga.PC3Advice 
SAY @202
IF ~~ EXIT 
END 

IF ~~ Helga.PC4Advice 
SAY @203
IF ~~ EXIT 
END 

IF ~~ Helga.PC5Advice 
SAY @204
IF ~~ EXIT 
END 

IF ~~ Helga.PC6Advice 
SAY @205
IF ~~ EXIT 
END 

IF ~~ Helga.PC7Advice 
SAY @206
IF ~~ EXIT 
END 

IF ~~ Helga.PCompanionThoughts 
SAY @207 
IF ~~ EXIT 
END 

IF ~~ Em.Me1
SAY @208
IF ~~ EXIT 
END 

IF ~~ Em.Me2 
SAY @209
IF ~~ EXIT 
END 


IF ~~ Helga.PT2Haela
SAY @210
= @211
++ @212 + PT2Thanks 
++ @213 + PT2Berserk
+~OR(3)Class(Player1,CLERIC_ALL)BeenInParty("Branwen")CheckStatGT(Player1,50,LORE)~+ @214 + PT2Tempus
END 

IF ~~ PT2Thanks 
SAY @215
IF ~~ EXIT 
END 

IF ~~ PT2Berserk 
SAY @216
= @217
IF ~~ + PT2Thanks 
END 

IF ~~ PT2Tempus 
SAY @218
IF ~BeenInParty("Branwen")Global("X32HelgaInBG1","GLOBAL",1)~ + PT2Branwen 
IF ~!InParty("Branwen")~ + PT2Temp2 
END 

IF ~~ PT2Branwen 
SAY @219
IF ~~ + PT2Thanks  
END

IF ~~ PT2Temp2 
SAY @220 
IF ~~ + PT2Thanks 
END 

IF ~~ Helga.PT3Husband 
SAY @221
= @222
++ @44 + Helga.PT3Loss 
++ @223 + Helga.PT3Kill 
++ @224 + Helga.PT3New 
END 

IF ~~ Helga.PT3Loss 
SAY @225
IF ~~ + Helga.PT3Exit 
END 

IF ~~ Helga.PT3Kill 
SAY @226
IF ~~ + Helga.PT3Exit 
END 

IF ~~ Helga.PT3New 
SAY @227
IF ~~ + Helga.PT3Exit 
END 

IF ~~ Helga.PT3Exit 
SAY @228
IF ~~ EXIT 
END 

IF ~~ Helga.PT1 
SAY @229
= @230
++ @231 + PT1.A 
++ @232 + PT1.B 
++ @233 + Helga.PTalk 
++ @234 EXIT 
END

IF ~~ PT1.A 
SAY @235
++ @232 + PT1.B 
++ @233 + Helga.PTalk 
++ @234 EXIT 
END

IF ~~ PT1.B 
SAY @236
++ @231 + PT1.A 
++ @233 + Helga.PTalk 
++ @234 EXIT 
END

IF ~~ Helga.PT4 
SAY @237
= @238
++ @239 + PT4.A 
++ @240 + PT4.B 
++ @233 + Helga.PTalk 
++ @234 EXIT 
END

IF ~~ PT4.A 
SAY @241
++ @233 + Helga.PTalk 
++ @234 EXIT 
END

IF ~~ PT4.B 
SAY @242
++ @233 + Helga.PTalk 
++ @234 EXIT 
END

IF ~~ FixString 
SAY @243
IF ~~ DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("X3HReset")~ EXIT 
END 

END 

