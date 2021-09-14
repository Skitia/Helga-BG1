//Vienxay 1
CHAIN IF ~InParty("X3Vien")
InParty("X3Helga")
See("X3Vien")
!StateCheck("X3Helga",CD_STATE_NOTVALID)
!StateCheck("X3Vien",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3VienX3Helga","GLOBAL",0)~ THEN X3HelgaB X3HelgaX3Vien1
@0
DO ~SetGlobal("X3VienX3Helga","GLOBAL",1)~
 == X3VienB @1
 == X3HelgaB @2
 == X3VienB @3
 == X3HelgaB @4
EXIT 

// Vienxay 2 
CHAIN IF ~InParty("X3Vien")
InParty("X3Helga")
See("X3Vien")
!StateCheck("X3Helga",CD_STATE_NOTVALID)
!StateCheck("X3Vien",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3VienX3Helga","GLOBAL",0)~ THEN X3HelgaB X3HelgaX3Vien1
@5
DO ~SetGlobal("X3VienX3Helga","GLOBAL",1)~
 == X3VienB @6
 == X3HelgaB @7
 == X3VienB @8
 == X3HelgaB @9
 == X3VienB @10
 == X3HelgaB @11
EXIT 

// Vienxay 3
CHAIN IF ~InParty("X3Vien")
InParty("X3Helga")
See("X3Vien")
!StateCheck("X3Helga",CD_STATE_NOTVALID)
!StateCheck("X3Vien",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3VienX3Helga","GLOBAL",2)~ THEN X3HelgaB X3HelgaX3Vien3
@12
DO ~SetGlobal("X3VienX3Helga","GLOBAL",3)~
 == X3VienB @13
 == X3HelgaB @14
 == X3VienB @15
 == X3HelgaB @16
 == X3VienB @17
 == X3HelgaB @18
EXIT

 // Vienxay 4 
CHAIN IF ~InParty("X3Vien")
InParty("X3Helga")
See("X3Vien")
!StateCheck("X3Helga",CD_STATE_NOTVALID)
!StateCheck("X3Vien",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3VienX3Helga","GLOBAL",3)~ THEN X3VienB X3HelgaX3Vien3
@19
DO ~SetGlobal("X3VienX3Helga","GLOBAL",4)~
 == X3HelgaB @20
 == X3VienB @21
 == X3HelgaB @22
 == X3VienB @23
 == X3HelgaB @24
 == X3VienB @25
 == X3HelgaB @26
EXIT