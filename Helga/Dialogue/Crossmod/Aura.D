// Helga-Aura 
CHAIN IF ~InParty("X3Helga")
InParty("C0Aura")
See("C0Aura")
!StateCheck("X3Helga",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("CrossAuraHelga","LOCALS",0)~ THEN X3HelgaB HelgaAura1
@0
DO ~SetGlobal("CrossAuraHelga","LOCALS",1)~
== BC0Aura @1
== X3HelgaB @2
== BC0Aura @3
== X3HelgaB @4
== BC0Aura @5
== X3HelgaB @6
== BC0Aura @7
EXIT