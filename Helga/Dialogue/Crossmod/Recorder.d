//Recorder 1
CHAIN IF ~InParty("X3Helga")
InParty("X3Rec")
See("X3Helga")
!StateCheck("X3Rec",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaX3Rec","GLOBAL",0)~ THEN X3RecB X3RecX3Helga1
~How old are you Helga? You seem an experience veteran at all of this.~
DO ~SetGlobal("X3HelgaX3Rec","GLOBAL",1)~
 == X3HelgaB ~Past my hundredth and twentieth birthday lass. Getting a bit too old for this, now.~
 == X3RecB ~You must have seen so many things in that time, and gathered so many stories. I'd love to listen to them.~
 == X3HelgaB ~Heh. Yer an eager one. I may, though I be nay a good storyteller.~
 == X3RecB ~It does't need to be exciting. You may know pieces of history that the church has yet to record. I want to preserve everything.~
 == X3HelgaB ~If it helps yer faithful, then I will oblige, lass. Just nay right now.~
EXIT 

//Recorder 2
CHAIN IF ~InParty("X3Helga")
InParty("X3Rec")
See("X3Rec")
!StateCheck("X3Rec",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaX3Rec","GLOBAL",1)~ THEN X3HelgaB X3RecX3Helga2
~Ye know any dwarven melodies, Recorder?~
DO ~SetGlobal("X3HelgaX3Rec","GLOBAL",2)~
 == X3RecB ~I don't, actually. I thought it was a bit of drums and low sounding instruments, maybe voices in your culture.~
 == X3HelgaB ~For the churches, maybe, and the festivals. What is used depends on the hall. Cornets and horns, the same we used for battle, or aye, yer drums are some examples.~
 == X3RecB ~What did your dwarven home use?~
 == X3HelgaB ~The fortress was nay much a place of music or revelry. Bit of solemn times, with we few and our duty. Nothing more than a hum in terms of music. We liked it that way.~
 == X3RecB ~I admire the dedication of your people, but that sounds a bit sad that they are without the mirth of music.~
 == X3HelgaB ~Aye, it may be. But the glorious battles we did together, they were all the entertainment we needed.~
EXIT 

// 3: Helga asks a bit about Gustav. 
CHAIN IF ~InParty("X3Helga")
InParty("X3Rec")
See("X3Rec")
!StateCheck("X3Rec",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaX3Rec","GLOBAL",2)~ THEN X3HelgaB X3RecX3Helga3
~What in Moradin's name is that critter?~
DO ~SetGlobal("X3HelgaX3Rec","GLOBAL",3)~
 == X3RecB ~Critter? You mean, Gustav?~
 == X3HelgaB ~This be no place for a pet, lass.~
 == X3RecB ~Gustav is not helpless. He's really swift and tough.~
 == X3HelgaB ~I can show you how tough he is with one smack.~
 == X3RecB ~You wouldn't. Would you? Don't!~
 == X3HelgaB ~Keep yer knickers together. I won't be smacking it unless it bites me. Then I'll send it to the abyss and back.~
EXIT 

// Recorder 4 
CHAIN IF ~InParty("X3Helga")
InParty("X3Rec")
See("X3Helga")
!StateCheck("X3Rec",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaX3Rec","GLOBAL",3)~ THEN X3RecB X3RecX3Helga3
~Helga, I was thinking about something. Do dwarves not have pets?~
DO ~SetGlobal("X3HelgaX3Rec","GLOBAL",4)~
== X3HelgaB ~Ye'd have to take care of it. I barely know how ye do it with your critter.~
== X3RecB ~It's not easy, but it is really rewarding. Animal friends are so important in my culture, especially when we're young.~
== X3HelgaB ~Thought yer kind were obessed with machines.~
== X3RecB ~In Lantan, mostly, and those from there. But Baervan's teachings hold meaning even there.~
== X3HelgaB ~Ye be an intriguing people, lass. A good sort to have, if a bit loony.~
EXIT 
