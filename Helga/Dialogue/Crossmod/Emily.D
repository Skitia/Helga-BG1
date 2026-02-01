
// Emily 1
CHAIN IF ~InParty("X3mily")
InParty("X3Helga")
See("X3mily")
!StateCheck("X3mily",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
Global("CrossEmilHelga","GLOBAL",0)~ THEN X3HelgaB HemiBanter1
@0
DO ~SetGlobal("CrossEmilHelga","GLOBAL",1)~
== X3milyB @1
== X3HelgaB @2
== X3milyB @3
== X3HelgaB @4
== X3milyB @5
== X3HelgaB @6
== X3milyB @7
EXIT

// Emily 2
CHAIN IF ~InParty("X3mily")
InParty("X3Helga")
See("X3Helga")
!StateCheck("X3mily",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
Global("CrossEmilHelga","GLOBAL",1)~ THEN X3milyB HemiBanter2
@8
DO ~SetGlobal("CrossEmilHelga","GLOBAL",2)~
== X3HelgaB @9
== X3milyB @10
== X3HelgaB @11
== X3milyB @12
== X3HelgaB @13
== X3milyB @14
== X3HelgaB @15
EXIT

// Helga 3
CHAIN IF ~InParty("X3mily")
InParty("X3Helga")
See("X3mily")
!StateCheck("X3mily",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
Global("CrossEmilHelga","GLOBAL",2)~ THEN X3HelgaB HemiBanter3
@16
DO ~SetGlobal("CrossEmilHelga","GLOBAL",3)~
== X3milyB @17
== X3HelgaB @18
== X3milyB @19
== X3HelgaB @20
== X3milyB @21
EXIT

// Emily 4
CHAIN IF ~InParty("X3mily")
InParty("X3Helga")
See("X3Helga")
!StateCheck("X3mily",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
Global("CrossEmilHelga","GLOBAL",3)~ THEN X3milyB HemiBanter4
@22
DO ~SetGlobal("CrossEmilHelga","GLOBAL",4)~
== X3HelgaB @23
== X3milyB  @24
== X3HelgaB  @25
== X3milyB  @26
== X3HelgaB  @27
== X3milyB  @28 
== X3HelgaB  @29
== X3milyB  @30
== X3HelgaB  @31
== X3milyB  @32
== X3HelgaB  @33
EXIT 
/*
// Isaac Helga 1
CHAIN IF ~IsValidForPartyDialogue("X3Isaac")
IsValidForPartyDialogue("X3Helga")
See("X3Isaac")
Global("CrossIsaacHelga","GLOBAL",0)~ THEN X3HelgaB HisaacBanter1
@34
DO ~SetGlobal("CrossIsaacHelga","GLOBAL",1)~
== X3IsaacB @35
== X3HelgaB @36
== X3IsaacB @37
== X3HelgaB @38
== X3IsaacB @39
EXIT 

// Isaac Helga 2
CHAIN IF ~IsValidForPartyDialogue("X3Isaac")
IsValidForPartyDialogue("X3Helga")
See("X3Helga")
Global("CrossIsaacHelga","GLOBAL",1)~ THEN X3IsaacB HisaacBanter2
@40
DO ~SetGlobal("CrossIsaacHelga","GLOBAL",2)~
== X3HelgaB @41
== X3IsaacB @42
== X3HelgaB @43
== X3IsaacB @44
EXIT 

// Isaac Helga 3
CHAIN IF ~IsValidForPartyDialogue("X3Isaac")
IsValidForPartyDialogue("X3Helga")
See("X3Isaac")
Global("CrossIsaacHelga","GLOBAL",2)~ THEN X3HelgaB HisaacBanter3
@46
DO ~SetGlobal("CrossIsaacHelga","GLOBAL",3)~
== X3IsaacB @47
== X3HelgaB @48
== X3IsaacB @49
== X3HelgaB @50
== X3IsaacB @51
== X3HelgaB @52
== X3IsaacB @53
== X3HelgaB @54
EXIT 

// Isaac Helga 4
CHAIN IF ~IsValidForPartyDialogue("X3Isaac")
IsValidForPartyDialogue("X3Helga")
See("X3Isaac")
InParty("X3mily")
Global("CrossIsaacHelga","GLOBAL",3)~ THEN X3HelgaB HisaacBanter4
@55
DO ~SetGlobal("CrossIsaacHelga","GLOBAL",4)~
== X3IsaacB @56
== X3HelgaB @57
== X3IsaacB @58
== X3HelgaB @59
== X3IsaacB @60
EXIT 
*/