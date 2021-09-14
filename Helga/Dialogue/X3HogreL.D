BEGIN X3HogreL

CHAIN IF ~Global("X3HogreLTalk","GLOBAL",0)IsValidForPartyDialogue("X3Helga")~ THEN X3HogreL Talk1
@0
DO ~SetGlobal("X3HogreLTalk","GLOBAL",1)~
END
+~!TimeOfDay(Night)~+ @1 + Talk1N
++ @2 EXTERN X3HelgaJ Talk12
++ @3 + Talk13
++ @4 + Talk1Fight 


CHAIN IF ~Global("X3HogreLTalk","GLOBAL",0)!IsValidForPartyDialogue("X3Helga")~ THEN X3HogreL Talk1
@5
DO ~SetGlobal("X3HogreLTalk","GLOBAL",1)~
END
+~!TimeOfDay(Night)~+ @6 + Talk1N
++ @2 + Talk1Bow
++ @3 + Talk13
++ @7 + Talk1Fight


CHAIN X3HogreL Talk1N 
@8
DO ~ActionOverride("X3Hogre2",Enemy())ActionOverride("X3HogreC",Enemy())Enemy()~ EXIT 

CHAIN X3HelgaJ Talk12 
@9
EXTERN X3HogreL Talk13 


CHAIN X3HogreL Talk13
@10
END 
++ @11 + Talk1Bow
++ @12 + Talk1Fight
+~!TimeOfDay(Night)~+ @1 + Talk1N


CHAIN X3HogreL Talk1Bow
@13
END
+~IsValidForPartyDialogue("X3Helga")~+ @14 + Talk1BegA // Helga will force a fight if in the party. 
+~!IsValidForPartyDialogue("X3Helga")~+ @14 + Talk1BegB // If not in the party, the PC can beg their way out to delay the conflict until they are ready.
++ @15 + Talk1Fight 
++ @16 + Talk1Fight 

CHAIN X3HogreL Talk1BegA 
@17
== X3HelgaJ @18
END 
+~CheckStatGT(Player1,13,CHR)~+ @19 EXTERN X3HelgaJ BackDownHighC  // ~Helga will back down temporarily. The PC will need to kill the ogre before timer expires. 
+~CheckStatLT(Player1,14,CHR)~+ @19 EXTERN X3HelgaJ BackDownLowC // ~Helga will break off from the party and fight them on her own unless the PC decides to assist her in the next line, else she'll likely die unless the PC aids.~
++ @20 + Talk1Fight 
++ @21 + Talk1ForceBeg


CHAIN X3HogreL Talk1BegB
@22
EXIT 

CHAIN X3HogreL Talk1ForceBeg 
@23
END
+~CheckStatGT(Player1,13,CHR)~+ @19 EXTERN X3HelgaJ BackDownHighC  // ~Helga will back down temporarily. The PC will need to kill the ogre before timer expires. 
+~CheckStatLT(Player1,14,CHR)~+ @19 EXTERN X3HelgaJ BackDownLowC // ~Helga will break off from the party and fight them on her own unless the PC decides to assist her in the next line, else she'll likely die unless the PC aids.~
++ @24 + Talk1Fight 
++ @25 + Talk1Fight 

CHAIN X3HelgaJ BackDownHighC
@26
EXTERN X3HogreL Talk1BegB 

CHAIN X3HelgaJ BackDownLowC 
@27
END 
++ @28 EXTERN X3HogreL Fight2
++ @29 EXTERN X3HogreL Talk1Fight 

CHAIN X3HogreL Fight2 
@30
DO ~ActionOverride("X3Helga",LeaveParty())ActionOverride("X3Hogre2",Enemy())ActionOverride("X3HogreC",Enemy())Enemy()ActionOverride("X3HogreL",Attack("X3Helga")ActionOverride("X3Helga",Attack("X3HogreL")~ EXIT 


CHAIN X3HogreL Talk1Fight 
@31
DO ~ActionOverride("X3Hogre2",Enemy())ActionOverride("X3HogreC",Enemy())Enemy()~ EXIT 
