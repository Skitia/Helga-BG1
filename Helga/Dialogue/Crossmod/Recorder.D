//Recorder 1
CHAIN IF ~InParty("X3Helga")
InParty("X3Rec")
See("X3Helga")
!StateCheck("X3Rec",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaX3Rec","GLOBAL",0)~ THEN X3RecB X3RecX3Helga1
@0
DO ~SetGlobal("X3HelgaX3Rec","GLOBAL",1)~
 == X3HelgaB @1
 == X3RecB @2
 == X3HelgaB @3
 == X3RecB @4
 == X3HelgaB @5
EXIT 

//Recorder 2
CHAIN IF ~InParty("X3Helga")
InParty("X3Rec")
See("X3Rec")
!StateCheck("X3Rec",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaX3Rec","GLOBAL",1)~ THEN X3HelgaB X3RecX3Helga2
@6
DO ~SetGlobal("X3HelgaX3Rec","GLOBAL",2)~
 == X3RecB @7
 == X3HelgaB @8
 == X3RecB @9
 == X3HelgaB @10
 == X3RecB @11
 == X3HelgaB @12
EXIT 

// 3: Helga asks a bit about Gustav. 
CHAIN IF ~InParty("X3Helga")
InParty("X3Rec")
See("X3Rec")
!StateCheck("X3Rec",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaX3Rec","GLOBAL",2)~ THEN X3HelgaB X3RecX3Helga3
@13
DO ~SetGlobal("X3HelgaX3Rec","GLOBAL",3)~
 == X3RecB @14
 == X3HelgaB @15
 == X3RecB @16
 == X3HelgaB @17
 == X3RecB @18
 == X3HelgaB @19
EXIT 

// Recorder 4 
CHAIN IF ~InParty("X3Helga")
InParty("X3Rec")
See("X3Helga")
!StateCheck("X3Rec",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaX3Rec","GLOBAL",3)~ THEN X3RecB X3RecX3Helga3
@20
DO ~SetGlobal("X3HelgaX3Rec","GLOBAL",4)~
== X3HelgaB @21
== X3RecB @22
== X3HelgaB @23
== X3RecB @24
== X3HelgaB @25
EXIT 
