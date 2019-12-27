//Vienxay 1
CHAIN IF ~InParty("X3Vien")
InParty("X3Helga")
See("X3Vien")
!StateCheck("X3Helga",CD_STATE_NOTVALID)
!StateCheck("X3Vien",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3VienX3Helga","GLOBAL",0)~ THEN X3HelgaB X3HelgaX3Vien1
~Ye are the most snobbish, arrogant, pampered little prissy elf I had the misfortune to travel with.~
DO ~SetGlobal("X3VienX3Helga","GLOBAL",1)~
 == X3VienB ~You hardly should be complaining. You should consider yourself lucky to be with an elf from Evermeet at all.~
 == X3HelgaB ~Bah. Is it too late for this grand place to take you back?~
 == X3VienB ~If only it were not. I would highly prefer to still be there.~
 == X3HelgaB ~Seems they've bloody punished us all then.~
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
~What did ye do that was so terrible that got you kicked out?~
DO ~SetGlobal("X3VienX3Helga","GLOBAL",1)~
 == X3VienB ~I hardly did anything. I was merely set up.~
 == X3HelgaB ~Given how ye act, I might have set you up too.~
 == X3VienB ~What?!~
 == X3HelgaB ~Yer so irritating, I'd want ye kicked out too.~
 == X3VienB ~Ugh, you are so annoying! Leave me alone, peasant.~
 == X3HelgaB ~Did she just call me a...bah!~
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
~Ye leave any family behind in Evermeet, lass?~
DO ~SetGlobal("X3VienX3Helga","GLOBAL",3)~
 == X3VienB ~Please. You've only mocked me when you've brought up Evermeet with me.~
 == X3HelgaB ~It's a serious question, lass.~
 == X3VienB ~My sisters, my parents, and many good friends.~
 == X3HelgaB ~I'm sorry about that lass. Family and clan is precious to a dwarf. To be exiled from it, even for something grievous...it not be easy.~
 == X3VienB ~Your attempts of sympathy after all you've said before mean nothing to me, dwarf. Just shut up.~
 == X3HelgaB ~Then I'll stop bloody trying, then.~
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
~I may have been a bit...cold to you, dwarf.~
DO ~SetGlobal("X3VienX3Helga","GLOBAL",4)~
 == X3HelgaB ~That would be putting it nicely, lass.~
 == X3VienB ~Your kind typically irritate me. So diminutive, so drunk, so stupid.~
 == X3HelgaB ~Ye may wish to get to yer point quicker.~
 == X3VienB ~Gods, I am making an apology, do stop interrupting.~
 == X3HelgaB ~Then get bloody to it!~
 == X3VienB ~Ugh, forget it. I can hardly stand your kind, and I am *not* sorry. Rushing me so rudely!~
 == X3HelgaB ~If it be meaning more peace and quiet, heh, apology accepted!~
EXIT