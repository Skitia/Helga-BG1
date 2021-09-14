// Kale 1
CHAIN IF ~InParty("X3Kale")
InParty("X3Helga")
See("X3Kale")
!StateCheck("X3Kale",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
Global("CrossHelgaKale","LOCALS",0)~ THEN X3HelgaB KaHelgaBanter1
@0
DO ~SetGlobal("CrossHelgaKale","LOCALS",1)~
== X3KaleB @1
== X3HelgaB @2
== X3KaleB @3
== X3HelgaB @4
== X3KaleB @5
EXIT

// Kale 2 
CHAIN IF ~InParty("X3Kale")
InParty("X3Helga")
See("X3Helga")
!StateCheck("X3Kale",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
Global("CrossHelgaKale","LOCALS",1)~ THEN X3KaleB KaHelgaBanter2
@6
DO ~SetGlobal("CrossHelgaKale","LOCALS",2)~ 
== X3HelgaB @7
== X3KaleB @8
== X3HelgaB @9
== X3HelgaB @10
== X3KaleB @11
== X3HelgaB @12
EXIT  

// Kale 3
CHAIN IF ~InParty("X3Kale")
InParty("X3Helga")
See("X3Helga")
!StateCheck("X3Kale",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
Global("CrossHelgaKale","LOCALS",2)~ THEN X3KaleB KaHelgaBanter3
@13
DO ~SetGlobal("CrossHelgaKale","LOCALS",3)~ 
== X3HelgaB @14
== X3KaleB @15
== X3HelgaB @16
== X3KaleB @17
== X3HelgaB @18
== X3KaleB @19
EXIT  

// Kale 4
CHAIN IF ~InParty("X3Kale")
InParty("X3Helga")
See("X3Kale")
GlobalGT("X3KaleQuestAccept","GLOBAL",0)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
Global("CrossHelgaKale","LOCALS",3)~ THEN X3HelgaB KaHelgaBanter4
@20
DO ~SetGlobal("CrossHelgaKale","LOCALS",4)~
== X3KaleB @21
== X3HelgaB @22
== X3KaleB @23
== X3HelgaB @24
== X3KaleB @25
== X3HelgaB @26
== X3KaleB @27
EXIT 