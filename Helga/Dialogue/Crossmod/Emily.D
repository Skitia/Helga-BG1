
// Emily 1
CHAIN IF ~InParty("X3mily")
InParty("X3Helga")
See("X3mily")
!StateCheck("X3mily",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
Global("CrossEmilHelga","LOCALS",0)~ THEN X3HelgaB HemiBanter1
@0
DO ~SetGlobal("CrossEmilHelga","LOCALS",1)~
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
Global("CrossEmilHelga","LOCALS",1)~ THEN X3milyB HemiBanter2
@8
DO ~SetGlobal("CrossEmilHelga","LOCALS",2)~
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
Global("CrossEmilHelga","LOCALS",2)~ THEN X3HelgaB HemiBanter3
@16
DO ~SetGlobal("CrossEmilHelga","LOCALS",3)~
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
Global("CrossEmilHelga","LOCALS",3)~ THEN X3milyB HemiBanter3
@22
DO ~SetGlobal("CrossEmilHelga","LOCALS",4)~
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