// Kale 1
CHAIN IF ~InParty("X3Kale")
InParty("X3Helga")
See("X3Kale")
!StateCheck("X3Kale",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
Global("CrossHelgaKale","LOCALS",0)~ THEN X3HelgaB KaHelgaBanter1
~Ye carry yerself well in battle, halfling.~
DO ~SetGlobal("CrossHelgaKale","LOCALS",1)~
== X3KaleB ~They don't call me the Hero of Gullykin for nothin.~
== X3HelgaB ~Sturdy, strong. Surprising for one of the wee folk.~
== X3KaleB ~That's just how I like it. Impresses the guys and gals quite a bit.~
== X3HelgaB ~But yer as much a braggart as the tallest telling storyteller.~
== X3KaleB ~Eh, well, you got me there too.~
EXIT

// Kale 2 
CHAIN IF ~InParty("X3Kale")
InParty("X3Helga")
See("X3Helga")
!StateCheck("X3Kale",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
Global("CrossHelgaKale","LOCALS",1)~ THEN X3KaleB KaHelgaBanter2
~Sooo. Got anyone special in  your life?~
DO ~SetGlobal("CrossHelgaKale","LOCALS",2)~ 
== X3HelgaB ~I've got my three kids, and my weapons.~
== X3KaleB ~Whoa, you've children, mate?~
== X3HelgaB ~Aye. Had to settle down away from all the adventuring and priestly duties for a time.~
== X3HelgaB ~I resented it sometimes, but after seeing what they came to be, couldn't be prouder.~
== X3KaleB ~I hope I never feel stuck in a situation like that.~
== X3HelgaB ~Ye say that now, but ye'll be wanting it someday. Trust me.~
EXIT  

// Kale 3
CHAIN IF ~InParty("X3Kale")
InParty("X3Helga")
See("X3Helga")
!StateCheck("X3Kale",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
Global("CrossHelgaKale","LOCALS",2)~ THEN X3KaleB KaHelgaBanter3
~Sooo. Where is your husband?~
DO ~SetGlobal("CrossHelgaKale","LOCALS",3)~ 
== X3HelgaB ~One with the stone.~
== X3KaleB ~So, he's mining rock while you're out here?~
== X3HelgaB ~Means he's dead, halfling.~
== X3KaleB ~Oh. Well eh, this got kinda awkward fast.~
== X3HelgaB ~You want to ask another personal question, halfling?~
== X3KaleB ~Nope. Nope nope nope.~
EXIT  

// Kale 4
CHAIN IF ~InParty("X3Kale")
InParty("X3Helga")
See("X3Kale")
GlobalGT("X3KaleQuestAccept","GLOBAL",0)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
Global("CrossHelgaKale","LOCALS",3)~ THEN X3HelgaB KaHelgaBanter4
~Ye not care much for yer family, Kale?~
DO ~SetGlobal("CrossHelgaKale","LOCALS",4)~
== X3KaleB ~What? Well, Ma is getting older, but honestly Sam should be pitching in more to take care of her.~
== X3HelgaB ~Ye don't seem to care much about this brother of yers, either.~
== X3KaleB ~He's made mistakes that cost of us. Not ever really made up for it either.~
== X3HelgaB ~Doesn't matter, lad. Ye help and stick by family.~
== X3KaleB ~Says the woman who isn't even living with her kids.~
== X3HelgaB ~My kids have grown, ye bloody daft halfling. Watch yer mouth before ye say something ye'll regret.~
== X3KaleB ~Sensitive spot, eh? I'll let it go, honest. I don't want to lose teeth from one of your strikes.~
EXIT 