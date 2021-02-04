BEGIN X32HELGJ

IF ~Global("X32HelgaTalk","GLOBAL",2)~ Talk1 // After Rest 
SAY ~We're stopping? Good time as ever. Been wanting to cook up this boar meat before it spoiled.~ [X3HSonD]
+~Global("X32HelgaInBG1","GLOBAL",1)~+ ~I fondly remember the last meal you cooked for us.~ + T1.A 
+~Global("X32HelgaInBG1","GLOBAL",1)~+ ~I hope this tastes better than your last attempt.~ + T1.A 
+~!Global("X32HelgaInBG1","GLOBAL",1)~+ ~I didn't know you could cook.~ + T1.A 
+~!Global("X32HelgaInBG1","GLOBAL",1)~+ ~Boar?~ + T1.B 
++ ~Good luck. I'm going to turn in.~ + T1.X 
END 

IF ~~ T1.A 
SAY ~Just ye wait until ye have a taste of this.~
IF ~~ + T1.P 
END 

IF ~~ T1.B 
SAY ~Aye, boar. Will be nice and seared when I'm done. Lathered in nice peppers and onions. A real treat.~
IF ~~ + T1.P 
END 

IF ~~ T1.P 
SAY ~Have a taste. What do ye think?~
+~Global("X32HelgaInBG1","GLOBAL",1)~+ ~Good as always.~ + T1.C 
+~Global("X32HelgaInBG1","GLOBAL",1)~+ ~The meat is as bland as last time.~ + T1.C1
+~!Global("X32HelgaInBG1","GLOBAL",1)~+ ~It's delicious.~ + T1.C 
+~!Global("X32HelgaInBG1","GLOBAL",1)~+ ~It's really, bland.~ + T1.C1 
++ ~Suddenly, I'm not so hungry.~ + T1.X 
END 

IF ~~ T1.C1 
SAY ~Pah. This meat's all the way from Torstultok and ye say bland?!~ 
+~CheckStatLT(Player1,50,LORE)~+ ~I don't know much about Torstultok.~ + T1.D 
+~CheckStatGT(Player1,49,LORE)~+ ~You mean Firehammer Hold? I thought I read the place was abandoned.~ + T1.E
++ ~Yeah, but thanks for the meal.~ + T1.Z 
END 

IF ~~ T1.C 
SAY ~Aye, a proper meal. Were always a few boars around Torstultok that made good hunting. The risk of goring makes the battle more thrilling than hunting deer.~
+~CheckStatLT(Player1,50,LORE)~+ ~I don't know much about Torstultok.~ + T1.D 
+~CheckStatGT(Player1,49,LORE)~+ ~You mean Firehammer Hold? I thought I read the place was abandoned.~ + T1.E
++ ~Thank you for the meal, Helga.~ + T1.Z 
END 

IF ~~ T1.D 
SAY ~Torstultok, or Firehammer Hold, be a fortress dedicated to me goddess, and me home. Couldn't ask for a more secure place.  Me kids be there, or around. Doing their mother proud, serving the fortress.~
= ~A small group of Dumathoin's folk make their presence known their as well. That connection is how I came to aid Deepvein.~ 
++ ~Thanks for enlightening me.~ + T1.Z
++ ~Sounds a bit dull.~ + T1.F 
++ ~I'm going to get some rest.~ + T1.Z 
END 

IF ~~ T1.E 
SAY ~Good! It mean the tales spread about it keep it all the safer.~
IF ~~ + T1.D 
END 

IF ~~ T1.F 
SAY ~To ye. Nay to a warrior. The fields of ruined battles could be no finer place.~
= ~I'll salt this to preserve it for later meals, then get some shut-eye. Enjoy yer rest, <CHARNAME>.~
IF ~~ DO ~SetGlobalTimer("X32HelgaGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32HelgaRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32HelgaTalk","GLOBAL",1)RestParty()~ EXIT 
END

IF ~~ T1.X 
SAY ~Bah. Suit yerself, then.~ 
IF ~~ DO ~SetGlobalTimer("X32HelgaGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32HelgaRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32HelgaTalk","GLOBAL",1)RestParty()~ EXIT 
END

IF ~~ T1.Z 
SAY ~Aye. Remember, a warrior's got to eat well to stay strong. Rest well, <CHARNAME>.~ 
IF ~~ DO ~SetGlobalTimer("X32HelgaGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32HelgaRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32HelgaTalk","GLOBAL",1)RestParty()~ EXIT 
END

IF ~Global("X32HelgaTalk","GLOBAL",4)~ THEN Talk2 
SAY ~With all the battles ye lead us into, I might die with a good hammer in me hand.~ [X3HSonD]
++ ~You sound like you're looking forward to it.~ + T2.A 
++ ~I will do all I can to keep you alive.~ + T2.B 
++ ~If you are weak, you certainly might.~ + T2.C 
END

IF ~~ T2.A 
SAY ~A dwarf who dies in action is to be praised and honored. There be no better way to see yer light fade from this world.~
= ~Better a battle than old age.~
++ ~I don't agree. To live well and long is the goal of many.~ + T2.D 
++ ~Given what we are up against, you might get your wish.~ + T2.E 
++ ~Ah, the excitement of a battle is a good place to end.~ + T2.E
END 


IF ~~ T2.B
SAY ~Aye, ye will. But death need not be feared.~
IF ~~ + T2.A 
END 

IF ~~ T2.C 
SAY ~Bah, I will nay go down without taking a score with me.~
IF ~~ + T2.A 
END 

IF ~~ T2.D 
SAY ~Ye want to die old, sick probably, stuck  to a bed then, with a bunch of kids and grands surrounding ye as ye feel useless? Nay I.~
IF ~~ + T2.H 
END 

IF ~~ T2.E 
SAY ~Aye. I'd prefer it. Better than gray and stuck into a bed, even if you're surrounded with family.~
IF ~~ + T2.G 
END 

IF ~~ T2.F
SAY ~Watched me granda pass in such a way. He loved his family, but hated the inability to lift himself.~
++ ~I'm sorry for your loss.~ + T2.G 
++ ~Tell me a bit about him.~ + T2.H 
++ ~That won't ever happen to me~ + T2.I 
END 

IF ~~ T2.G 
SAY ~Me? Nay. Be sorry for him.~
IF ~~ + T2.H 
END 

IF ~~ T2.H 
SAY ~He was a good instructor, a teacher. But rarely did he enter battle himself. Granda lectured and giving advise to new warriors and preparing them for the field.~
= ~He was afraid of blood. Practice blades were one thing, but real battle? Spooked him.~ 
++ ~Despite his fear though, he contributed to training. There is worth in that.~ + T2.J 
++ ~A pity, though the battlefield isn't for everyone.~ + T2.K 
++ ~He seems a coward then. I'm surprised he is your grandfather.~ + T2.L 
END 

IF ~~ T2.I 
SAY ~I hope so, <CHARNAME>. For yer sake.~
IF ~~ DO ~SetGlobalTimer("X32HelgaGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32HelgaRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32HelgaTalk","GLOBAL",1)RestParty()~ EXIT 
END

IF ~~ T2.J 
SAY ~Hrm. I nay think of that. Perhaps ye have a point, <CHARNAME>, perhaps. But nay my preference all the same.~
IF ~~ DO ~SetGlobalTimer("X32HelgaGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32HelgaRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32HelgaTalk","GLOBAL",1)RestParty()~ EXIT 
END

IF ~~ T2.K 
SAY ~Nay, though nay dwarf should fear it. Though I be always loving granda's memory all the same.~
IF ~~ DO ~SetGlobalTimer("X32HelgaGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32HelgaRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32HelgaTalk","GLOBAL",1)RestParty()~ EXIT 
END

IF ~~ T2.L 
SAY ~Aye, he be a coward. That be my belief. But I always be loving me granda's memory all the same.~
IF ~~ DO ~SetGlobalTimer("X32HelgaGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32HelgaRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32HelgaTalk","GLOBAL",1)RestParty()~ EXIT 
END
 



IF ~Global("X32HelgaTalk","GLOBAL",6)~ THEN Talk3 
SAY ~Everyday by yer side, ye grow to be a more capable adventurer in me eyes.~ [X3HSonD]
++ ~I must. People are counting on me.~ + T3.A 
++ ~What makes you say that?~ + T3.B  
++ ~Did you expect anything less?~ + T3.C 
END  

IF ~~ T3.A 
SAY ~That be true, aye.~
IF ~~ + T3.D 
END 

IF ~~ T3.B 
SAY ~Ye kill like a <PRO_MANWOMAN> who has done it for a lifetime.~
IF ~~ + T3.D 
END 

IF ~~ T3.C 
SAY ~Nay. Nay I would expect no less from a <PRO_MANWOMAN> of yer reputation.~
IF ~~ + T3.D 
END 

IF ~~ T3.D 
SAY ~But ye also leave a score of death in yer wake as well. It be almost...unsettling. Even for me.~
++ ~I would avoid it if I could. But rarely is that possible.~ + T3.E 
++ ~I thought you enjoyed the carnage of battle?~ + T3.E 
++ ~Such is the fate of every fool that is in my way.~ + T3.G 
END 

IF ~~ T3.E 
SAY ~A good battle should nay be avoided. That always be true.~
IF ~~ + T3.F 
END 

IF ~~ T3.F 
SAY ~But the number of corpses...that will keep giving me a spook.~
IF ~~ DO ~SetGlobalTimer("X32HelgaGameTalkTimer","GLOBAL",THREE_DAYS)RealSetGlobalTimer("X32HelgaRealTalkTimer","GLOBAL",ONE_HOUR)IncrementGlobal("X32HelgaTalk","GLOBAL",1)RestParty()~ EXIT 
END

IF ~~ T3.G 
SAY ~Maybe so. And maybe be well deserved to all of them.~
IF ~~ + T3.F 
END 


IF ~Global("X32HelgaTalk","GLOBAL",8)~ THEN Talk4 
SAY ~It be good we are resting. I be a bit...sore.~ [X3HSonD]
++ ~Is something wrong?~ DO ~IncrementGlobal("X32HelgaTalk","GLOBAL",1)~ +  T4.A 
++ ~I can take a look at you.~ DO ~IncrementGlobal("X32HelgaTalk","GLOBAL",1)~ + T4.B 
++ ~Helga getting weak? I thought you were stronger than this.~ DO ~IncrementGlobal("X32HelgaTalk","GLOBAL",1)~ + T4.C 
END 

IF ~~ T4.A 
SAY ~Bah. Age. Age and the damn decay that comes with it.~
IF ~~ + T4.D 
END 
 
IF ~~ T4.B 
SAY ~Nay. I just need a good rest.~
IF ~~ + T4.D 
END 

IF ~~ T4.C 
SAY ~Bah. Ye can be as strong as ye like. But when ye get older, yer body just doesn't want to keep up that way.~
IF ~~ + T4.D 
END 

IF ~~ T4.D 
SAY ~I told you about granda. I loath to end my time worn and broken in a bed, but this fight against the crusade may be me last services in battle. My strength is as good as ever, but the pain of exertion be there too.~
++ ~You don't have to give your health up for this.~  + T4.E 
++ ~Can't you just cast a heal spell on yourself?~ + T4.F 
++ ~Just don't slack on me, old dwarf.~ + T4.G 
END 

IF ~~ T4.E 
SAY ~There be no greater thing in the world to push for, <CHARNAME>.~
= ~I have me children, I had the domestic life and it ain't the same. When this be over though, I'll go see them, and decide if there be anything left in me spirit for more battles.~
++ ~If you are sure. But if you need to stop, just let me know.~ + T4.H
++ ~Retirement may not be so bad.~ + T4.I 
++ ~Just don't slack on me, old dwarf.~ + T4.G 
END 

IF ~~ T4.F 
SAY ~If it only be so easy.~
= ~Nay. I be nay wounded. Only sore, and only getting older and worn from every bash and swing I've had to take.~
++ ~If you are sure. But if you need to stop, just let me know.~ + T4.H
++ ~Retirement may not be so bad.~ + T4.I 
++ ~Just don't slack on me, old dwarf.~ + T4.G 
END 

IF ~~ T4.G 
SAY ~I be old, not dead yet. I will nay slack on ye yet. I promise yet that much.~
IF ~~ + T4.Final 
END 

IF ~~ T4.H 
SAY ~Nay. I'll push until I collapse. And I nay fall off my feet easy.~
IF ~~ + T4.Final 
END 

IF ~~ T4.I 
SAY ~Bah. To ye, maybe. I'll accept it if I have to, but nay yet.~
IF ~~ + T4.Final 
END 

IF ~~ T4.Final 
SAY ~Whatever happens with this crusade, it have been a grand honor fighting at yer side.~
++ ~And by yours.~ + T4.1 
++ ~They will be defeated. I assure you of that.~ + T4.1 
++ ~You've been useful. That's what matters.~  + T4.1 
END  

// THRIX

IF ~Global("X32HelgSacrifice","bd4500",1)~ ThrixTalk0
SAY ~I be very tempted to smack ye with my weapon for what ye did, fool!~
+ ~!Global("X32_thrix_mark_Helga","global",1)~ + ~I was lying. I've no plans to hand you over. Besides, I got the riddle right.~ DO ~SetGlobal("X32HelgSacrifice","bd4500",2)~ + ThrixTalk2
+ ~Global("X32_thrix_mark_Helga","global",1)~ + ~I was lying. I've no plans to hand you over.~ DO ~SetGlobal("X32HelgSacrifice","bd4500",2)~ + ThrixTalk1
+ ~!Global("X32_thrix_mark_Helga","global",1)~ + ~I'm sorry, Helga. I shouldn't have done that.~ DO ~SetGlobal("X32HelgSacrifice","bd4500",2)~ + ThrixTalk3
+ ~Global("X32_thrix_mark_Helga","global",1)~ + ~I'm sorry, Helga. I shouldn't have done that.~ DO ~SetGlobal("X32HelgSacrifice","bd4500",2)~ + ThrixTalk1
+ ~!Global("X32_thrix_mark_Helga","global",1)~ + ~It was necessary. Nothing is above what must be done.~ DO ~SetGlobal("X32HelgSacrifice","bd4500",2)~ + ThrixTalk4
+ ~Global("X32_thrix_mark_Helga","global",1)~ + ~It was necessary. Nothing is above what must be done.~ DO ~SetGlobal("X32HelgSacrifice","bd4500",2)~ + ThrixTalk1
END

IF ~~ ThrixTalk1
 SAY ~Nay. Ye won't be doing anything. *I* will be slaying the thing when it tries. My trust with ye is gone, and when this be over, I not be traveling with you further.~
IF ~~ EXIT
END

IF ~~ ThrixTalk2
 SAY ~Ye got it right. But had ye hadn't...I don't even wish to be thinking about it.~
IF ~~ + ThrixTalk6
END

IF ~~ ThrixTalk3
 SAY ~Shouldn't? Absolutely ye bloody shouldn't have.~
IF ~~ + ThrixTalk6
END

IF ~~ ThrixTalk4
 SAY ~Nay. There be no honor in that way! Shame on ye!~
IF ~~ EXIT
END

IF ~~ ThrixTalk6
 SAY ~Let's just get this bloody over with before I smack ye with me weapon.~
IF ~~ EXIT
END


CHAIN X32HelgJ T4.1 
~Let's rest up, then kick some crusader arse.~ 
END
IF ~IsValidForPartyDialogue("Minsc")~ EXTERN BDMINSCJ T4.M
IF ~!IsValidForPartyDialogue("Minsc")~ DO ~RestParty()~ EXIT 


CHAIN BDMINSCJ T4.M 
~Rest, then the kicking of butt! Minsc will be ready!~
DO ~RestParty()~ EXIT 


// Dungeon one liner 

CHAIN IF ~Global("X32HelgaSoDUR","GLOBAL",1)~ THEN X32HelgJ UROneLiner 
~This be the building we uncovered. Keep yer wits about ye. The dead are all over this place.~
DO ~SetGlobal("X32HelgaSoDUR","GLOBAL",2)~
EXIT

CHAIN IF ~Global("X32HelgaSoDQD","GLOBAL",1)~ THEN X32HelgJ HelgQDone 
~I thank ye for yer help. I nay think we could have done it without ye, <CHARNAME>.~
DO ~SetGlobal("X32HelgaSoDQD","GLOBAL",2)~
END 
++ ~All in a day's work.~ + HQD.1
++ ~It wasn't just me. You played a part as well in that lich's demise.~ + HQD.2
++ ~Your group was rather weak. You definitely needed help.~ + HQD.3

CHAIN X32HelgJ HQD.1 
~The  day still be long. I long for the next battle ye get me into.~
EXIT 

CHAIN X32HelgJ HQD.2
~Mighty kind of ye. But it be a whole unit, but I recognize it is held together and successful because of  ye.~
EXTERN X32HelgJ HQD.1 

CHAIN X32HelgJ HQD.3
~Bah. Deepvein be nay inexperienced and soft. But I be admitting we were battered and weathered.~
EXTERN X32HelgJ HQD.1 

// BDSEMAHL 

// To allow a good party to kill him, we're delaying Helga's interjection until they make their first dialogue choice pick.
INTERJECT BDSEMAHL 6 X32HelgaBDSEMAHL5
== X32HelgJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~Nay! It is I, Semahl! We stand strong and proud!~
EXTERN BDSEMAHL 7

// Helga has this line in her regular dialogue file in case she is not in the party.
I_C_T BDSEMAHL 10 X32HelgaBDSEMAHL10 
== X32HelgJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~A dwarf is nay so easily felled, Semahl!~
END

// Reaction to kill choice. 
I_C_T BDSEMAHL 5 X32HelgaBDSEMAHL5 
== X32HELGJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~Bloody hells, what are you doing <PRO_GIRLBOY>?! Stand down, ye giant!~
== BDSEMAHL ~You with hurters—Me hurt you too!~
END 

I_C_T BDDEEP 39 X32HelgaBDDEEP39 
== X32HELGJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~I tried to halt it Deepvein, but they went into swinging bloody quickly.~
== BDDEEP ~Damnation, damnation!~
END 

// Schael

EXTEND_TOP BDSCHAEL 40 #3
+ ~OR(2)
Global("SOD_fromimport","global",1)
BeenInParty("X3Helga")
Global("X32HelgaSchael","GLOBAL",0)~ + ~What about the battle lusting dwarf, Helga? ~ DO ~SetGlobal("X32HelgaSchael","GLOBAL",1)~ EXTERN BDSCHAEL bdschaelHelgaRecall
END

CHAIN BDSCHAEL bdschaelHelgaRecall
~If I recall, I've heard of a dwarven expedition to the north, around Coast Way Crossing. I believe she is assisting them.~
== BDSCHAEL ~She may be willing to rejoin you if you find her.~
COPY_TRANS BDSCHAEL 40

// Takos

I_C_T BDTAKOS 11 X32HelgaBDTAKOS11 
== X32HELGJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~Bah. With his pouting, they'd be better off with someone else. Would nay fault ye if ye wanted to keep them either, should we find them.~
END

// Deepvein 

ADD_TRANS_ACTION BDDEEP BEGIN 12 END BEGIN END ~ActionOverride("X3Helga",LeaveParty())ActionOverride("X3Helga",Enemy())ActionOverride("X3Helga",SetGlobal("bd_joined","locals",0))
    ActionOverride("X3Helga",ChangeAIScript("BDFCLE01",GENERAL))ActionOverride("X3Helga",ChangeAIScript("BDDCLER",CLASS))ActionOverride("X3Helga",ChangeAIScript("BDSHOUT",RACE))~

INTERJECT BDDEEP 57 X32HelgaBDDEEP57A
== X32HelgJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)!Dead("bdsemahl")  
Global("BD_DOD_SAVED_SEMAHL","GLOBAL",1)
Global("BD_DOD_SAW_SEMAHL_INTERJECT","LOCALS",0)~ THEN ~Nay! <CHARNAME> speaks truth, Deepvein. I be seeing it with me own eyes.~
EXTERN BDSEMAHL 1	

INTERJECT BDDEEP 57 X32HelgaBDDEEP57B
== X32HelgJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)
OR(3)
Dead("BDSEMAHL")  
Global("BD_DOD_SAVED_SEMAHL","GLOBAL",0)
Global("BD_DOD_SAW_SEMAHL_INTERJECT","LOCALS",1)~ THEN ~Nay! <CHARNAME> speaks truth, Deepvein. I be seeing it with me own eyes.~
EXTERN BDDEEP 63

INTERJECT BDDEEP 69 X32HelgaBDDEEP69A
== X32HelgJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)!Dead("bdsemahl")  
Global("BD_DOD_SAVED_SEMAHL","GLOBAL",1)
Global("BD_DOD_SAW_SEMAHL_INTERJECT","LOCALS",0)~ THEN ~Nay! <CHARNAME> speaks truth, Deepvein. I be seeing it with me own eyes.~
EXTERN BDSEMAHL 2	

INTERJECT BDDEEP 69 X32HelgaBDDEEP69B
== X32HelgJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)
OR(3)
Dead("BDSEMAHL")  
Global("BD_DOD_SAVED_SEMAHL","GLOBAL",0)
Global("BD_DOD_SAW_SEMAHL_INTERJECT","LOCALS",1)~ THEN ~Nay! <CHARNAME> speaks truth, Deepvein. I be seeing it with me own eyes.~
EXTERN BDDEEP 77

I_C_T BDDEEP 81 X32HelgaBDDEEP81 
== X32HELGJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~I wish to stay with <CHARNAME>, Deepvein. Where battle goes, I go. Ye can see this place sealed on yer own?~
== BDDEEP ~Aye, I can. Ye have me thanks, Helga. For everything.~
END

I_C_T BDDEEP 82 X32HelgaBDDEEP82 
== X32HELGJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~I wish to stay with <CHARNAME>, Deepvein. Where battle goes, I go. Ye can see this place sealed on yer own?~
== BDDEEP ~Aye, I can. Ye have me thanks, Helga. For everything.~
END


I_C_T BDCOLDH 2 X32HelgaBDCOLDH2 
== X32HELGJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~I should have known. Coldhearth, you traitor!~
== BDCOLDH ~You come here, luckmaiden? With helpers in toy? How did they come to be here?~
END

I_C_T BDCOLDH 17 X32HelgaBDCOLDH17
== X32HELGJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~If ye choose to help this lich, know ye make an enemy of me.~ 
END 

I_C_T BDCOLDH 19 X32HElgaBDCOLDH19
== X32HelgJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~I'll nay work with a lich, and I'll nay work for ye! Raise yer arms, ye'll not get their necklaces!~
DO ~LeaveParty()Enemy()SetGlobal("bd_joined","locals",0)ChangeAIScript("BDFCLE01",GENERAL)ChangeAIScript("BDDCLER",CLASS)~
END 

// Jegg 
I_C_T BDJEGG 12 X32HelgaBDJEGG12 
== X32HelgJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~I know the loss of a spouse in battle well, me kin.~
END 

// Khalid Bridgefort
I_C_T BDKHALID 56  X32HelgaBDKHALID56
== X32HelgJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~Aye! To the bloody battlefield!~
END

I_C_T BDJUNIA 33 X32HelgaBDJUNIA33 
== X32HelgJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~Yadda, yadda, heard it before. Can we get to the smashing yet?~
END

// Helvda 

I_C_T BDHELVDA 7 X32HelgaBDHELVDA7
== X32HelgJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~That be nay a bad thing. Death at battle be the most fortunate way to go.~
END

// Morlis 

EXTEND_TOP BDMORLIS 4 #4 
+ ~IsValidForPartyDialogue("X3Helga")~ + ~You enjoy the battle, don't you? Helga has similar blood lust.~ EXTERN X32HelgJ bdMorlis4
END 

CHAIN X32HelgJ bdMorlis4
~Ain't nothing wrong with enjoying a good kill.~
== BDMORLIS ~I... yes. I do enjoy it. I thought if I said so, though, they wouldn't let me in the militia.~ 
== X32HelgJ ~Bah. They just don't want ye to get carried away. Just keep the enjoyment to those who deserve it.~
DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",2)
SetGlobal("bd_sdd301_morlis_skill","global",2)~
EXTERN BDMORLIS 6

EXTEND_TOP BDCLOVIS 3 #3
+ ~IsValidForPartyDialogue("X3Helga")~ + ~You have a comment, Helga?~ DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",2)
SetGlobal("bd_sdd301_clovista_skill","global",2)~ EXTERN X32HelgJ BDCLOVIS3 
END 

// Hyreth 

EXTEND_TOP BDHYRETH 0 #5 
+ ~IsValidForPartyDialogue("X3Helga")~ + ~My companion, Helga, can heal you.~ EXTERN X32HelgJ BDHyreth0
END 

CHAIN X32HelgJ BDHyreth0 
~Ain't no point in staying weak.~
EXTERN BDHhyreth 2 

EXTEND_TOP BDHYRETH 2 #5 
+ ~IsValidForPartyDialogue("X3Helga")~ + ~Do you know of this faith, Helga?~ EXTERN X32HelgJ BDHyreth2 
END 

CHAIN X32HelgJ BDHyreth2
~Bah. Faith of whelps that want to take on pain of others. Could do that twice as well fighting.~
EXTERN BDHhyreth 3 

EXTEND_TOP BDHYRETH 4 #5 
+ ~IsValidForPartyDialogue("X3Helga")~ + ~Do you know what he is talking about, Helga?~ EXTERN X32HelgJ BDHyreth4
END 

CHAIN X32HelgJ BDHyreth4
~His faith is about suffering. They think it means something. It does, when ye out risking yer life for others. Putting yer body out there. Being valuable. Nay this.~
EXTERN BDHhyreth 6 

EXTEND_TOP BDHYRETH 6 #5
+~IfValidForPartyDialogue("X3Helga")  // X3Helga
OR(8)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)  // SPPR103.SPL (Cure Light Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_MEDIUM_WOUNDS)  // SPPR315.SPL (Cure Medium Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS)  // SPPR401.SPL (Cure Serious Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)  // SPPR502.SPL (Cure Critical Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_HEAL)  // SPPR607.SPL (Heal)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_MASS_CURE)  // SPPR514.SPL (Mass Cure)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_NEUTRALIZE_POISON)  // SPPR404.SPL (Neutralize Poison)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_AID)  // SPPR201.SPL (Aid)~+ ~Tend him, Helga.~ DO ~SetGlobal("BD_WOUNDED_ZEALOT","BD3000",2)
SetGlobal("BD_WOUNDED_ZEALOT_X3Helga","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("bdsdd304",TRUE)~ EXIT
END 

EXTEND_TOP BDHYRETH 7 #5
+~IfValidForPartyDialogue("X3Helga")  // X3Helga
OR(8)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)  // SPPR103.SPL (Cure Light Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_MEDIUM_WOUNDS)  // SPPR315.SPL (Cure Medium Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS)  // SPPR401.SPL (Cure Serious Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)  // SPPR502.SPL (Cure Critical Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_HEAL)  // SPPR607.SPL (Heal)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_MASS_CURE)  // SPPR514.SPL (Mass Cure)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_NEUTRALIZE_POISON)  // SPPR404.SPL (Neutralize Poison)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_AID)  // SPPR201.SPL (Aid)~+ ~Tend him, Helga.~ DO ~SetGlobal("BD_WOUNDED_ZEALOT","BD3000",2)
SetGlobal("BD_WOUNDED_ZEALOT_X3Helga","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("bdsdd304",TRUE)~ EXIT
END 

EXTEND_TOP BDHYRETH 8 #5
+~IfValidForPartyDialogue("X3Helga")  // X3Helga
OR(8)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)  // SPPR103.SPL (Cure Light Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_MEDIUM_WOUNDS)  // SPPR315.SPL (Cure Medium Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS)  // SPPR401.SPL (Cure Serious Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)  // SPPR502.SPL (Cure Critical Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_HEAL)  // SPPR607.SPL (Heal)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_MASS_CURE)  // SPPR514.SPL (Mass Cure)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_NEUTRALIZE_POISON)  // SPPR404.SPL (Neutralize Poison)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_AID)  // SPPR201.SPL (Aid)~+ ~Tend him, Helga.~ DO ~SetGlobal("BD_WOUNDED_ZEALOT","BD3000",2)
SetGlobal("BD_WOUNDED_ZEALOT_X3Helga","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
ApplyDamagePercent(Player1,20,CRUSHING)
ActionOverride(Player1,SetSequence(SEQ_DAMAGE))
SmallWait(5)
StartCutSceneEx("bdsdd304",TRUE)~ EXIT
END 

EXTEND_TOP BDHYRETH 9 #5
+~IfValidForPartyDialogue("X3Helga")  // X3Helga
OR(8)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)  // SPPR103.SPL (Cure Light Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_MEDIUM_WOUNDS)  // SPPR315.SPL (Cure Medium Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS)  // SPPR401.SPL (Cure Serious Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)  // SPPR502.SPL (Cure Critical Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_HEAL)  // SPPR607.SPL (Heal)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_MASS_CURE)  // SPPR514.SPL (Mass Cure)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_NEUTRALIZE_POISON)  // SPPR404.SPL (Neutralize Poison)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_AID)  // SPPR201.SPL (Aid)~+ ~Tend him, Helga.~ DO ~SetGlobal("BD_WOUNDED_ZEALOT","BD3000",2)
SetGlobal("BD_WOUNDED_ZEALOT_X3Helga","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
ApplyDamagePercent(Player1,20,CRUSHING)
ActionOverride(Player1,SetSequence(SEQ_DAMAGE))
SmallWait(5)
StartCutSceneEx("bdsdd304",TRUE)~ EXIT
END 

EXTEND_TOP BDHYRETH 10 #5
+~IfValidForPartyDialogue("X3Helga")  // X3Helga
OR(8)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)  // SPPR103.SPL (Cure Light Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_MEDIUM_WOUNDS)  // SPPR315.SPL (Cure Medium Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS)  // SPPR401.SPL (Cure Serious Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)  // SPPR502.SPL (Cure Critical Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_HEAL)  // SPPR607.SPL (Heal)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_MASS_CURE)  // SPPR514.SPL (Mass Cure)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_NEUTRALIZE_POISON)  // SPPR404.SPL (Neutralize Poison)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_AID)  // SPPR201.SPL (Aid)~+ ~Tend him, Helga.~ DO ~SetGlobal("BD_WOUNDED_ZEALOT","BD3000",2)
SetGlobal("BD_WOUNDED_ZEALOT_X3Helga","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("bdsdd304",TRUE)~ EXIT
END 
EXTEND_TOP BDHYRETH 8 #5
+~IfValidForPartyDialogue("X3Helga")  // X3Helga
OR(8)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)  // SPPR103.SPL (Cure Light Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_MEDIUM_WOUNDS)  // SPPR315.SPL (Cure Medium Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS)  // SPPR401.SPL (Cure Serious Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)  // SPPR502.SPL (Cure Critical Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_HEAL)  // SPPR607.SPL (Heal)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_MASS_CURE)  // SPPR514.SPL (Mass Cure)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_NEUTRALIZE_POISON)  // SPPR404.SPL (Neutralize Poison)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_AID)  // SPPR201.SPL (Aid)~+ ~Tend him, Helga.~ DO ~SetGlobal("BD_WOUNDED_ZEALOT","BD3000",2)
SetGlobal("BD_WOUNDED_ZEALOT_X3Helga","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
ApplyDamagePercent(Player1,20,CRUSHING)
ActionOverride(Player1,SetSequence(SEQ_DAMAGE))
SmallWait(5)
StartCutSceneEx("bdsdd304",TRUE)~ EXIT 
END 
EXTEND_TOP BDHYRETH 12 #5
+~IfValidForPartyDialogue("X3Helga")  // X3Helga
OR(8)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_LIGHT_WOUNDS)  // SPPR103.SPL (Cure Light Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_MEDIUM_WOUNDS)  // SPPR315.SPL (Cure Medium Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS)  // SPPR401.SPL (Cure Serious Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)  // SPPR502.SPL (Cure Critical Wounds)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_HEAL)  // SPPR607.SPL (Heal)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_MASS_CURE)  // SPPR514.SPL (Mass Cure)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_NEUTRALIZE_POISON)  // SPPR404.SPL (Neutralize Poison)
	NextTriggerObject("X3Helga")  // X3Helga
	HaveSpell(CLERIC_AID)  // SPPR201.SPL (Aid)~+ ~Tend him, Helga.~ DO ~SetGlobal("BD_WOUNDED_ZEALOT","BD3000",1)
SetGlobal("BD_WOUNDED_ZEALOT_X3Helga","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
ApplyDamagePercent(Player1,20,CRUSHING)
ActionOverride(Player1,SetSequence(SEQ_DAMAGE))
SmallWait(5)
StartCutSceneEx("bdsdd304",TRUE)~ EXIT
END 
// Uncommon Cold 

EXTEND_TOP BDYESTIM 1
+~IfValidForPartyDialogue("X3Helga")~+  ~Stay still so Helga can tend to you.~ DO ~SetGlobal("bd_patient_yestimell","global",2)
IncrementGlobal("bd_sdd302_death_count","global",-1)~ EXTERN X32HelgJ BDYESTIM1 // X3Helga
END 
CHAIN X32HelgJ BDYESTIM1
~Aye, stay still ye bastard. It will just take a m- bloody hells! He be mad in the head! Be ready for fighting!~ 
DO ~IncrementGlobal("bd_sdd302_patients_talked","bd3000",1)
ActionOverride("bdyestim",Polymorph(FIGHTER_MALE_HUMAN))
ChangeSpecifics("bdyestim",THIEF)  // Yestimell
ActionOverride("bdyestim",Enemy())
ActionOverride("bdyestim",Attack([PC]))~ 
EXIT 

EXTEND_TOP BDZIDRAN 1 
+~IfValidForPartyDialogue("X3Helga")~+  ~Stay still so Helga can examine you.~ DO ~SetGlobal("bd_patient_zidrand","global",2)
IncrementGlobal("bd_sdd302_death_count","global",-1)~ EXTERN X32HelgJ BDZIDRAN1 
END 
CHAIN X32HelgJ BDZIDRAN1 
~Moradin's beard. Look at her. She be far worse than all of them. And I reckon it be because she in the middle of them all.~
EXTERN BDZIDRAN 2

EXTEND_TOP BDXERRA 1 
+~IfValidForPartyDialogue("X3Helga")~+  ~Stay still so Helga can examine you.~ DO ~SetGlobal("bd_patient_xerra","global",2)
IncrementGlobal("bd_sdd302_death_count","global",-1)~ EXTERN X32HelgJ BDXERRA1 
END 
CHAIN X32HelgJ BDXERRA1 
~He be having a strong fever. I've seen it before alongside past dwarven comrades. I can be working on a salve to make it better.~ 
EXTERN BDXERRA 2 


EXTEND_TOP BDDOSIA 13 
+~IfValidForPartyDialogue("X3Helga")~+  ~I don't have any. Do you, Helga?~  EXTERN X32HelgJ BDDOSIA13 
END 
CHAIN X32HelgJ BDDOSIA13 
~I be knowing of Blackthorn. Saved many an ill dwarf for me once. We find it again, I can repeat its healing remedy.~
DO ~AddJournalEntry(61440,QUEST)  
SetGlobal("bd_sdd302_uncommon_cold","global",2)
SetGlobal("bd_sdd302_blackthorn","global",1)~ 
EXTERN BDDOSIA 16  




CHAIN X32HelgJ BDCLOVIS3 
~Ye be working too hard. Not attacking smart enough.~
== BDCLOVIS ~I do get fatigued pretty quickly during drills. I thought I needed more training.~
== X32HelgJ ~Bah. Ye do. Just need to train right. Hold it tight. Watch yer extending. Get them to come too close. Makes the kill nice and easy.~
EXTERN BDCLOVIS 5

// Murs 

I_C_T BDMURS 33 X32HelgaBDMURS14 
== X32HelgJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~Sounds like a battle to be excited for.~
END

I_C_T BDHEPHER 3 X32HelgaBDHepher3 
== X32HelgJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~Psst, <CHARNAME>? Can we get to the bloody fighting already?.~
END

I_C_T BDHEPHER 4 X32HelgaBDHepher4 
== X32HelgJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~Psst, <CHARNAME>? Can we get to the bloody fighting already?.~
END

// Thrix the Profane

EXTEND_BOTTOM BDTHRIX 21
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 22 #3
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 23 #5
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 24 #8
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 26
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_TOP BDTHRIX 27 #3
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 28 #5
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_TOP BDTHRIX 29 #8
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 30
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 31 #3
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 32 #5
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 33 #8
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 34
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 35 #3
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 36 #5
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 37 #8
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 38
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 39 #3
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 40 #5
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 41 #8
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 42
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 43 #3
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 44 #5
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 45 #8
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 46
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 47 #3
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 48 #5
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 49 #8
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 50
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 51 #3
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 52 #5
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 53 #8
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 54
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 55 #3
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 56 #5
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 57 #8
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 58
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 59 #3
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 60 #5
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 61 #8
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 62
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 63 #3
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 64 #5
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 65 #8
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 66
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 67 #3
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 68 #5
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 69 #8
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 70
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 71 #3
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 72 #5
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 73 #8
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 74
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 75 #3
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 76 #5
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 77 #8
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 78
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 79 #3
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 80 #5
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 81 #8
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 82
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 83 #3
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 84 #5
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 85 #8
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 90
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 91 #3
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 92 #5
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 93 #8
IF ~Global("X32_Saved_Helga","bd4500",0)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager1
END

CHAIN BDTHRIX ThrixWager1
~Hrm. Ah. Your veteran bloodmaiden dwarf. I can sense all the battles she has indulged in. She would be delightful company.~
END
++ ~Say your riddle, and should I lose, I will give Helga to you.~ DO ~SetGlobal("X32HelgaSacrifice","bd4500",1) SetGlobal("bd_thrix_sacrifice_companion","global",1)~ EXTERN BDTHRIX 116
++ ~You ask for too much, fiend. Helga's soul is worth too much for me to risk it. Choose another.~ DO ~SetGlobal("X32_Saved_Helga","bd4500",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ EXTERN X32HelgJ ThrixWager2
++ ~It's a poor <PRO_MANWOMAN> indeed who'd sacrifice a friend in such a way. If I can't answer your riddle, you will take me, and let them go on their way. Agreed?~ EXTERN BDTHRIX 113
++ ~I'll not play your twisted game, devil. Stand aside, or pay the price.~ EXTERN BDTHRIX 12

CHAIN X32HelgJ ThrixWager2
~Thank ye for not choosing me, but bloody hell, why aren't we smashing this thing's head in?!~
== BDTHRIX ~Hrm hrm. So be it.~
END
IF ~RandomNum(4,1)~ EXTERN BDTHRIX 78
IF ~RandomNum(4,2)~ EXTERN BDTHRIX 79
IF ~RandomNum(4,3)~ EXTERN BDTHRIX 80
IF ~RandomNum(4,4)~ EXTERN BDTHRIX 81

EXTEND_BOTTOM BDTHRIX 118
IF ~Global("X32HelgaSacrifice","bd4500",1)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 119
IF ~Global("X32HelgaSacrifice","bd4500",1)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 120
IF ~Global("X32HelgaSacrifice","bd4500",1)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 121
IF ~Global("X32HelgaSacrifice","bd4500",1)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 122
IF ~Global("X32HelgaSacrifice","bd4500",1)
IsValidForPartyDialogue("X3Helga")~ EXTERN BDTHRIX ThrixWager4
END

CHAIN BDTHRIX ThrixWager4
~Pleasing. The bloodmaiden is now mine.~
END
++ ~Sorry, Helga. I didn't get the riddle.~ DO ~SetGlobal("X32_thrix_mark_Helga","global",1)~ EXTERN X32HelgJ ThrixWager5
++ ~That's not happening, fiend!~ EXTERN BDTHRIX 10

CHAIN X32HelgJ ThrixWager5
~I would have smashed yer head in if I knew you'd betray me like this, <CHARNAME>.~
DO ~SetGlobal("bd_thrix_plot","global",11)~ EXTERN BDTHRIX 140



APPEND X32HELGJ 

IF ~!Global("BD_DOD_QUEST_DONE","GLOBAL",1)Global("X32HelgaSoDQL","GLOBAL",1)~ Departure 
SAY ~I am sorry, but until our work is done, I can nay leave the dig site.~
++ ~I will be quick. I only need to do a few small things.~ + DepartureA
++ ~I understand.~ + DepartureB
++ ~Then it is goodbye for now.~ + DepartureB 
END 

IF ~~ DepartureA 
SAY ~I see ye soon, then.~ 
IF ~~ DO ~SetGlobal("bd_joined","locals",0)LeaveParty()SetGlobal("X32HelgaSoDQL","GLOBAL",0)EscapeAreaMove("BD1100",955,1772,SE)~ EXIT 
END 

IF ~~ DepartureB 
SAY ~Bah. May have all the work done meself at this rate, if  ye nay return. Axes high.~
IF ~~ DO ~SetGlobal("bd_joined","locals",0)LeaveParty()SetGlobal("X32HelgaSoDQL","GLOBAL",0)EscapeAreaMove("BD1100",955,1772,SE)~ EXIT  
END 

IF ~IsGabber(Player1)AreaCheck("bd4300")GlobalGT("bd_plot","global",585)~ THEN BEGIN SoD.BattleOver 
SAY ~If this is the last series of battles of my career...I be bloody proud of them.~
IF ~~ EXIT 
END 

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY])OR(2)AreaCheck("BD0120")AreaCheck("BD0130")~ THEN BEGIN Helga.PIDCrypt
SAY ~Why are ye wasting time with words when we're in a bloody crypt? To business.~
IF ~~ EXIT 
END 

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY])~ THEN BEGIN Helga.PID 
 SAY  ~Yeah?~  
 + ~HPPercentGT(Myself,74)RandomNum(5,1)~ + ~How are you doing?~ + Helga.PHowAreYou1 // ~How are you doing?~
 + ~HPPercentGT(Myself,74)RandomNum(5,2)~ + ~How are you doing?~ + Helga.PHowAreYou2 // ~How are you doing?~
 + ~HPPercentGT(Myself,74)RandomNum(5,3)~ + ~How are you doing?~ + Helga.PHowAreYou3 // ~How are you doing?~
 +~HPPercentLT(Myself,75)HPPercentGT(Myself,49)RandomNum(2,1)~+ ~How are you doing?~ + Helga.PHowAreYouInjured // ~How are you doing?~ //(Under 75%, Over 50%)
 +~HPPercentLT(Myself,50)~+ ~How are you doing?~ + Helga.PHowAreYouHurt // ~How are you doing?~ //(Under 50%)
 +~HPPercentGT(Myself,74)RandomNum(5,4)~+ ~How are you doing?~ + Helga.PHowAreYou4 // ~How are you doing?~
 +~HPPercentGT(Myself,74)RandomNum(5,5)~+ ~How are you doing?~ + Helga.PHowAreYou5 // ~How are you doing?~
 +~HPPercentLT(Myself,75)HPPercentGT(Myself,49)RandomNum(2,2)~+ ~How are you doing?~ + Helga.PHowAreYouInjured2  // ~How are you doing?~
 ++ ~Let's stop and chat for a bit.~  + Helga.PTalk // ~Let's stop and chat for a bit.~ 
 ++ ~I need nothing at the moment.~  EXIT // ~I need nothing at the moment.~ 
 END 

IF ~~ Helga.PHowAreYou1
SAY ~Restless. I long for battle.~ 
IF ~~ EXIT  
END 

IF ~~ Helga.PHowAreYou2
SAY ~Bah. Why are we talking about my precious state of being when we could be fighting something!~ 
IF ~~ EXIT  
END

IF ~~ Helga.PHowAreYou3
SAY ~Been lusting for a good fight.~ 
IF ~~ EXIT  
END

IF ~~ Helga.PHowAreYouInjured
SAY ~Minor wounds, to add to the scars. I'll have stories now.~ 
IF ~~ EXIT  
END

IF ~~ Helga.PHowAreYouHurt
SAY ~Bah. I can heal meself, though time to eat and rest would be appreciated.~ 
IF ~~ EXIT  
END

IF ~~ Helga.PHowAreYou4
SAY ~Bah. I don't get enough bloody sleep.~
IF ~~ EXIT  
END

IF ~~ Helga.PHowAreYou5
SAY ~Got a hankering for stew and cold ale.~
IF ~~ EXIT  
END

IF ~~ Helga.PHowAreYouInjured2
SAY ~Stop yer fussing. I'm a tough gal.~
IF ~~ EXIT  
END


  
IF ~~ Helga.PTalk 
SAY  ~Yeah?~  
/*Options will  vary as the game goes on.*/ 
/*Chapter Advice, these repeat.*/ 
+~Global("Chapter","GLOBAL",1)~+ ~What do you think I should do now?~ + Helga.PC1Advice // ~What do you think I should do now?~
+~Global("Chapter","GLOBAL",2)~+ ~What do you think I should do now?~ + Helga.PC2Advice // ~What do you think I should do now?~
+~Global("Chapter","GLOBAL",3)~+ ~What do you think I should do now?~ + Helga.PC3Advice // ~What do you think I should do now?~
+~Global("Chapter","GLOBAL",4)~+ ~What do you think I should do now?~ + Helga.PC4Advice // ~What do you think I should do now?~
+~Global("Chapter","GLOBAL",5)~+ ~What do you think I should do now?~ + Helga.PC5Advice // ~What do you think I should do now?~
+~Global("Chapter","GLOBAL",6)~+ ~What do you think I should do now?~ + Helga.PC6Advice // ~What do you think I should do now?~
+~Global("Chapter","GLOBAL",7)~+ ~What do you think I should do now?~ + Helga.PC7Advice // ~What do you think I should do now?~
// Companion Thoughts 
+~NumInPartyAliveGT(2)~+ ~What do you think of our companions?~ + Helga.PCompanionThoughts // ~What do you think of our companions?~ 
+~ReputationGT(Player1,5)~+ ~What do you think of me?~ + Em.Me1 // ~What do you think of me?~
+~ReputationLT(Player1,6)~+ ~What do you think of me?~ + Em.Me2 // ~What do you think of me?~
// Dialogue From Talk Expansions. These fire once. 
+~Global("X3HelgaHaelaTopic","GLOBAL",0)~+ ~Can you tell me more about Haela Brightaxe?~ DO ~SetGlobal("X3HelgaHaelaTopic","GLOBAL",1)~ + Helga.PT2Haela 
+~GlobalGT("X32HelgaTalk","GLOBAL",8)Global("X3HelgaHusbandTopic","GLOBAL",0)~+ ~You mentioned children before, but what about a husband?~ DO ~SetGlobal("X3HelgaHusbandTopic","GLOBAL",1)~ + Helga.PT3Husband
+~Global("X3HelgaHomeTopic","GLOBAL",0)~+ ~Can you tell me more about your home?~ DO ~SetGlobal("X3HelgaHomeTopic","GLOBAL",1)~ + Helga.PT1
+~GlobalGT("Chapter","GLOBAL",8)Global("X3HelgaOverTopic","GLOBAL",0)~+ ~What are you going to do when the crusade is over?~ DO ~SetGlobal("X3HelgaOverTopic","GLOBAL",1)~ + Helga.PT4 
++ ~Never mind, let's get going.~ EXIT 
END 

IF ~~ Helga.PC1Advice 
SAY ~Find some monster, and kill it. Then find another and repeat!~
IF ~~ EXIT 
END 

IF ~~ Helga.PC2Advice 
SAY ~Smash us some lizards, I'd say.~
IF ~~ EXIT 
END 

IF ~~ Helga.PC3Advice 
SAY ~Break some brigand skulls. Ruining metal is dishonorable, and deserves nothing short of death.~
IF ~~ EXIT 
END 

IF ~~ Helga.PC4Advice 
SAY ~Bah. I don't like it, but we should trek through that Cloakwood Forest.~
IF ~~ EXIT 
END 

IF ~~ Helga.PC5Advice 
SAY ~Explore the city, and bash any enemies in our way.~
IF ~~ EXIT 
END 

IF ~~ Helga.PC6Advice 
SAY ~Ye've lead us this far. I think ye can figure that out.~
IF ~~ EXIT 
END 

IF ~~ Helga.PC7Advice 
SAY ~Ye know as well as I do what needs to be done.~
IF ~~ EXIT 
END 

IF ~~ Helga.PCompanionThoughts 
SAY ~Bah. Ask a bloody gossip. I'm here to fight, not to yap about who ye bring along.~ 
IF ~~ EXIT 
END 

IF ~~ Em.Me1
SAY ~Heh. Ye aren't so bad. I'd like ye more if we were doing more fighting and less talking.~
IF ~~ EXIT 
END 

IF ~~ Em.Me2 
SAY ~I think you're a bloody idiot sometimes. Watch yerself or ye'll be without my help.~
IF ~~ EXIT 
END 


IF ~~ Helga.PT2Haela
SAY ~Haela Brightaxe is my patron, and my sisters who follow her wander into the fray, battling monsters and charging into the fray in her glorious name.~
= ~There are a few males, but most of us are sisters, luck maidens wandering around the realms in search of the next battle to aid our people.~
++ ~Thank you for the explanation.~ + PT2Thanks 
++ ~You sound like a berserker.~ + PT2Berserk
+~OR(3)Class(Player1,CLERIC_ALL)BeenInParty("Branwen")CheckStatGT(Player1,50,LORE)~+ ~This seems similar to the god of Tempus.~ + PT2Tempus
END 

IF ~~ PT2Thanks 
SAY ~Now I'd like to get to continuing the service of her glorious work. To the next fight!~
IF ~~ EXIT 
END 

IF ~~ PT2Berserk 
SAY ~Perhaps. There ain't no better way to go into battle but by charging with fury to intimidate your foes. They've my respect, though that is not what I am.~
= ~Nay, we are only priests with a love of the fray and our kin as strong as a good ale.~
IF ~~ + PT2Thanks 
END 

IF ~~ PT2Tempus 
SAY ~That war god, eh?~
IF ~BeenInParty("Branwen")Global("X32HelgaInBG1","GLOBAL",1)~ + PT2Branwen 
IF ~!InParty("Branwen")~ + PT2Temp2 
END 

IF ~~ PT2Branwen 
SAY ~After seeing that Branwen in action, I see where ye come from. They be respectable all right, though nay as fierce as our own clergy!~
IF ~~ + PT2Thanks  
END

IF ~~ PT2Temp2 
SAY ~Bah. They be a priesthood of warriors, but they nay be as respectable or as fierce as our own clergy.~ 
IF ~~ + PT2Thanks 
END 

IF ~~ Helga.PT3Husband 
SAY ~Thelgrim passed many years ago. The fool died in battle without me at his side as I was taking care of the wee ones at home.~
= ~We were supposed to stay retired together, but he could not resist the call for need of help and defense.~
++ ~I'm sorry for your loss.~ + Helga.PT3Loss 
++ ~What took his life?~ + Helga.PT3Kill 
++ ~Well, now you can find someone new!~ + Helga.PT3New 
END 

IF ~~ Helga.PT3Loss 
SAY ~I have done me mourning. I need nay more pity or sympathy. Honor him by slaying ogres and giants without prejudice, the foes that took his life.~
IF ~~ + Helga.PT3Exit 
END 

IF ~~ Helga.PT3Kill 
SAY ~A fierce giant, Krudge the Stonecrusher and his small tribe. Ye can bet that I found someone else to watch the wee ones and got vengeance against them. Have had a fierce hatred for giant kind ever since.~
IF ~~ + Helga.PT3Exit 
END 

IF ~~ Helga.PT3New 
SAY ~Nay. My wee ones have grown and I've nay desire to settle for any love save battle until I too, am felled in glorious fashion.~
IF ~~ + Helga.PT3Exit 
END 

IF ~~ Helga.PT3Exit 
SAY ~I will speak nay more of him, for i grow solemn.~
IF ~~ EXIT 
END 

IF ~~ Helga.PT1 
SAY ~I suppose you mean Torstultok, or Firehammer hold? I barely call my little house in Beregost me real home.~
= ~Not many of our priesthood is there anymore. A few of our best priests and guardians keep to the place now. Wasn't much a place to raise me little ones, but I made it work.~
++ ~Is that where your children are now?~ + PT1.A 
++ ~It sounds like it wasn't very safe there.~ + PT1.B 
++ ~Let's talk about something else.~ + Helga.PTalk 
++ ~Let's keep moving.~ EXIT 
END

IF ~~ PT1.A 
SAY ~Nay. Me children left Torstultok when the came of age. Once they left the nest, I moved to Beregost meself for a time before returning. Not the same without them.~
++ ~It sounds like it wasn't very safe there.~ + PT1.B 
++ ~Let's talk about something else.~ + Helga.PTalk 
++ ~Let's keep moving.~ EXIT 
END

IF ~~ PT1.B 
SAY ~On the contrary. There be no safer place with the people who guarded it, and few would travel the lands outside it. It was our little sanctuary.~
++ ~Is that where your children are now?~ + PT1.A 
++ ~Let's talk about something else.~ + Helga.PTalk 
++ ~Let's keep moving.~ EXIT 
END

IF ~~ Helga.PT4 
SAY ~Mmm.~
= ~My body isn't what it once was, but I nay be ready to sit yet. If ye planning on more adventures, I may tarry a little longer. Else I'll find a new threat out there for me blade to handle.~
++ ~I'd be happy to have you along, though I'm not sure myself yet.~ + PT4.A 
++ ~Why not take some rest? I know I will for a time.~ + PT4.B 
++ ~Let's talk about something else.~ + Helga.PTalk 
++ ~Let's keep moving.~ EXIT 
END

IF ~~ PT4.A 
SAY ~That be good enough for me. Long as my weapon has something to aim for...one less monstrosity or destructive force out there that could be a threat to me people.~
++ ~Let's talk about something else.~ + Helga.PTalk 
++ ~Let's keep moving.~ EXIT 
END

IF ~~ PT4.B 
SAY ~Nay. It nay feel right resting. Got only a little time before I may not be able to do this at all...and I want to give every inch until my body gives out or I fall in battle.~
++ ~Let's talk about something else.~ + Helga.PTalk 
++ ~Let's keep moving.~ EXIT 
END

END 

