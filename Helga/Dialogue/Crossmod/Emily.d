
// Emily 1
CHAIN IF ~InParty("X3mily")
InParty("X3Helga")
See("X3mily")
!StateCheck("X3mily",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
Global("CrossEmilHelga","LOCALS",0)~ THEN X3HelgaB HemiBanter1
~There's not much honor in shooting your opponent from afar.~
DO ~SetGlobal("CrossEmilHelga","LOCALS",1)~
== X3milyB ~It's strategically necessary, isn't it? I don't want my enemy to poke me red.~
== X3HelgaB ~Perhaps if it be some of the time, but that be your modus, lass.~
== X3milyB ~What's so bad about that?~
== X3HelgaB ~Ain't no bloody honor in it.~
== X3milyB ~I'm not fighting for some code of honor. I'm just trying to help.~
== X3HelgaB ~If ye really want to make a difference, ye'll learn how to fight close up.~
== X3milyB ~That just seems backwards to me. I'm just going to stick with what works.~
EXIT

// Emily 2
CHAIN IF ~InParty("X3mily")
InParty("X3Helga")
See("X3Helga")
!StateCheck("X3mily",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
Global("CrossEmilHelga","LOCALS",1)~ THEN X3milyB HemiBanter2
~Are you okay, Helga?~
DO ~SetGlobal("CrossEmilHelga","LOCALS",2)~
== X3HelgaB ~Restless for the next battle, but I nay be a whelp either. What ye getting at?~
== X3milyB ~You just always seem so tense.~
== X3HelgaB ~Lass, if ye want to survive, ye need to always be battle ready.~
== X3milyB ~We can come off unfriendly if we're always expecting someone to jump at us.~
== X3HelgaB ~Better to strike too quickly than too slowly, lass. Just remember that.~
== X3milyB ~Well then, I think we're at a second disagreement.~
== X3HelgaB ~Then be a fool then. Bah!~
EXIT

// Helga 3
CHAIN IF ~InParty("X3mily")
InParty("X3Helga")
See("X3mily")
!StateCheck("X3mily",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
Global("CrossEmilHelga","LOCALS",2)~ THEN X3HelgaB HemiBanter3
~Maybe ye be right, lass.~
DO ~SetGlobal("CrossEmilHelga","LOCALS",3)~
== X3milyB ~Hrm? Who are you speaking to?~
== X3HelgaB ~Yer little pecking with your arrows has been consistently helpful. I judged it as lesser and maybe I shouldn't have.~
== X3milyB ~I'm glad you've reconsidered. Maybe you'll want to try the bow yourself?~
== X3HelgaB ~I said ye might be right, not start using yer bloody stupid weapon. Bah!~
== X3milyB ~Well, it couldn't hurt to at least try my chances!~
EXIT

// Emily 4
CHAIN IF ~InParty("X3mily")
InParty("X3Helga")
See("X3Helga")
!StateCheck("X3mily",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
Global("CrossEmilHelga","LOCALS",3)~ THEN X3milyB HemiBanter3
~Are you healing yourself when we rest, Helga?~
DO ~SetGlobal("CrossEmilHelga","LOCALS",4)~
== X3HelgaB ~If needed. Why?~
== X3milyB  ~It's just you seem a bit in pain sometimes before we set off on the day's travel. From what I've seen, anyway.~
== X3HelgaB  ~Healing magic doesn't do everything, sometimes.~
== X3milyB  ~I could ask <CHARNAME> to slow down a little.~
== X3HelgaB  ~That would nay be helping lass, that'd make it worse.~
== X3milyB  ~Well, is there anything I can do to make it easier?~ 
== X3HelgaB  ~One thing, lass.~
== X3milyB  ~Name it.~
== X3HelgaB  ~Don't talk about it. I will fight as tough as I always have, and I nay want anyone worrying over me. Got it?~
== X3milyB  ~That just seems silly to me...but if you're sure, I won't coddle you about it.~
== X3HelgaB  ~Thank ye, lass. It may sound stubborn of me...but I do care about me pride.~
EXIT 