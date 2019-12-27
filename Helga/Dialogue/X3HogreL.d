BEGIN X3HogreL

CHAIN IF ~Global("X3HogreLTalk","GLOBAL",0)IsValidForPartyDialogue("X3Helga")~ THEN X3HogreL Talk1
~Who this then? Hrmmm. My night's supper?~
DO ~SetGlobal("X3HogreLTalk","GLOBAL",1)~
END
+~!TimeOfDay(Night)~+ ~It's not even evening, stupid ogre.~ + Talk1N
++ ~We're certainly not prey.~ EXTERN X3HelgaJ Talk12
++ ~I assume you are the famed leader of this ogre pack?~ + Talk13
++ ~Die Beast!~ + Talk1Fight 


CHAIN IF ~Global("X3HogreLTalk","GLOBAL",0)!IsValidForPartyDialogue("X3Helga")~ THEN X3HogreL Talk1
~Who this then? Hrmmm. Supper? Desert?~
DO ~SetGlobal("X3HogreLTalk","GLOBAL",1)~
END
+~!TimeOfDay(Night)~+ ~It's not evening, stupid ogre.~ + Talk1N
++ ~We're certainly not prey.~ + Talk1Bow
++ ~I assume you are the famed leader of this ogre pack?~ + Talk13
++ ~Die, beast!~ + Talk1Fight


CHAIN X3HogreL Talk1N 
~Stupid. You always call us stupid. My stomach and you become one!~
DO ~ActionOverride("X3Hogre2",Enemy())ActionOverride("X3HogreC",Enemy())Enemy()~ EXIT 

CHAIN X3HelgaJ Talk12 
~We aren't afraid to show ye who really is the predator here, oaf.~
EXTERN X3HogreL Talk13 


CHAIN X3HogreL Talk13
~Grr. I am chief Burk of my ogre tribe. And you? Soon to be dead for my evening dinner.~
END 
++ ~Wait, we want no trouble!~ + Talk1Bow
++ ~Bring it, you lump!~ + Talk1Fight
+~!TimeOfDay(Night)~+ ~It's not even evening, stupid ogre.~ + Talk1N


CHAIN X3HogreL Talk1Bow
~Then bow. Bow and beg.~
END
+~IsValidForPartyDialogue("X3Helga")~+ ~Okay, I'm on my knees. Just let us go.~ + Talk1BegA // Helga will force a fight if in the party. 
+~!IsValidForPartyDialogue("X3Helga")~+ ~Okay, I'm on my knees. Just let us go.~ + Talk1BegB // If not in the party, the PC can beg their way out to delay the conflict until they are ready.
++ ~I'm not bowing to you.~ + Talk1Fight 
++ ~You waste your breath!~ + Talk1Fight 

CHAIN X3HogreL Talk1BegA 
~Good. But why does your dwarf not join you?~
== X3HelgaJ ~I'm no coward. I set out to see ye dead, and I will not be backing down!~
END 
+~CheckStatGT(Player1,13,CHR)~+ ~Helga, we aren't ready. Back down.~ EXTERN X3HelgaJ BackDownHighC  // ~Helga will back down temporarily. The PC will need to kill the ogre before timer expires. 
+~CheckStatLT(Player1,14,CHR)~+ ~Helga, we aren't ready. Back down.~ EXTERN X3HelgaJ BackDownLowC // ~Helga will break off from the party and fight them on her own unless the PC decides to assist her in the next line, else she'll likely die unless the PC aids.~
++ ~If she stands, so do we.~ + Talk1Fight 
++ ~Don't worry about her.~ + Talk1ForceBeg


CHAIN X3HogreL Talk1BegB
~Pitiful. Let them go. But if you ever return to me, your fate is death.~
EXIT 

CHAIN X3HogreL Talk1ForceBeg 
~All of you must kneel, or all of you shall perish.~
END
+~CheckStatGT(Player1,13,CHR)~+ ~Helga, we aren't ready. Back down.~ EXTERN X3HelgaJ BackDownHighC  // ~Helga will back down temporarily. The PC will need to kill the ogre before timer expires. 
+~CheckStatLT(Player1,14,CHR)~+ ~Helga, we aren't ready. Back down.~ EXTERN X3HelgaJ BackDownLowC // ~Helga will break off from the party and fight them on her own unless the PC decides to assist her in the next line, else she'll likely die unless the PC aids.~
++ ~Then if she wishes to stand and fight, so do we.~ + Talk1Fight 
++ ~Time to run!~ + Talk1Fight 

CHAIN X3HelgaJ BackDownHighC
~Damn ye. I'll obey, for now.~
EXTERN X3HogreL Talk1BegB 

CHAIN X3HelgaJ BackDownLowC 
~Nay. Even If I stand alone. Run if ye will, but I will stand and fight.~
END 
++ ~Then we part. Flee, everyone else!~ EXTERN X3HogreL Fight2
++ ~Then we will stand with you. At arms!~ EXTERN X3HogreL Talk1Fight 

CHAIN X3HogreL Fight2 
~Kill her, and any who do not scamper!~
DO ~ActionOverride("X3Helga",LeaveParty())ActionOverride("X3Hogre2",Enemy())ActionOverride("X3HogreC",Enemy())Enemy()ActionOverride("X3HogreL",Attack("X3Helga")ActionOverride("X3Helga",Attack("X3HogreL")~ EXIT 


CHAIN X3HogreL Talk1Fight 
~Kill them.~
DO ~ActionOverride("X3Hogre2",Enemy())ActionOverride("X3HogreC",Enemy())Enemy()~ EXIT 
