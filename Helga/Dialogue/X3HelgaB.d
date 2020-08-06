BEGIN X3HelgaB

//Ajantis 
CHAIN IF ~InParty("X3Helga")
See("X3Helga")
InParty("Ajantis")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaAjantis","GLOBAL",0)~ THEN X3HelgaB X3HelgaAjantis1
~Bring forth the battle! I'll show ye might!~
DO ~SetGlobal("X3milyAjantis1","GLOBAL",1)~
== BAJANT ~Your lust for the fight against evil is...~
== X3HelgaB ~Are ye disturbed by this?~
== BAJANT ~Evil should be vanquished, but you seem almost to revel in slaughter.~
== X3HelgaB ~As I bloody should! Battle isn't meant to be pretty. Bah.~
== BAJANT ~We should fight with honor first, my lady.~
== X3HelgaB ~We define honor differently. Keep yers, I'll keep mine.~
EXIT 


//Alora 
CHAIN IF ~InParty("X3Helga")
See("X3Helga")
InParty("Alora")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaAlora","GLOBAL",0)~ THEN X3HelgaB X3HelgaAlora1
~Cute glances won't save ye all the time, halfling. Ye prepared for that?~
DO ~SetGlobal("X3milyAlora1","GLOBAL",1)~
== %ALORA_BANTER% ~I'll always have friends around me, Helga.~
== X3HelgaB ~That it, then? Relying on friends?~
== %ALORA_BANTER% ~Friends make everything possible.~
== X3HelgaB ~That's what a child would think.~
== %ALORA_BANTER% ~Why are you being so gruff?~
== X3HelgaB ~Just being realistic, lass. Just take care of yerself~
EXIT 

//Baeloth 
CHAIN IF ~InParty("X3Helga")
See("X3Helga")
!StateCheck("Baeloth",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaBaeloth","GLOBAL",0)~ THEN BBAELOTH X3HelgaBaeloth1
~You remind me much of the dark dour dreary duergar, Helga.~
DO ~SetGlobal("X3HelgaBaeloth","GLOBAL",1)~
== X3HelgaB ~Will a hammer to yer skull cease your comparisons?.~
== BBAELOTH ~Not at all! They threw thoughtless threats like you.~
== X3HelgaB ~Then let this be your only warning. Never compare me to the hated deep dwelling dwarves, and ye'll live longer.~
EXIT

//Branwen 1
CHAIN IF ~InParty("X3Helga")
See("X3Helga")
InParty("Branwen")
!StateCheck("Branwen",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaBranwen","GLOBAL",0)~ THEN %BRANWEN_BANTER% X3HelgaBranwen1
~You are a fine warrior, Helga. I am proud to fight by your side.~
DO ~SetGlobal("X3HelgaBranwen","GLOBAL",1)~
== X3HelgaB ~You aren't so bad yerself, for a human.~
== X3HelgaB ~A game? Whoever slays the most in the coming battles, is the greater warrior amongst us!~
== %BRANWEN_BANTER% ~A challenge I accept.~
EXIT 

//Coran 
CHAIN IF ~InParty("X3Helga")
See("X3Helga")
InParty("Coran")
!StateCheck("Coran",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaCoran","GLOBAL",0)~ THEN %CORAN_BANTER% X3HelgaCoran1
~I thought dwarf women had beards.~
DO ~SetGlobal("X3HelgaCoran","GLOBAL",1)~
== X3HelgaB ~Some. More then ye can say for yerself!~
== %CORAN_BANTER% ~What's wrong with my looks?~
== X3HelgaB ~Beardless makes ye ugly, that's what's wrong! And ye think yer a charmer. Bah.~
== %CORAN_BANTER% ~I don't appreciate your humor.~
== X3HelgaB ~Wasn't even a joke.~
EXIT 

// Dorn
CHAIN IF ~InParty("X3Helga")
InParty("Dorn")
See("Dorn")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaDorn","GLOBAL",0)~ THEN X3HelgaB X3HelgaDorn1
~Rare is there an orc that I have respect for.~
DO ~SetGlobal("X3HelgaDorn","GLOBAL",1)~
== %DORN_BANTER% ~I do not fight for your respect, dwarf.~
== X3HelgaB ~But ye have it. Ye have might and stature.~
== %DORN_BANTER% ~Hrm, and here I thought you were going for an insult.~
== X3HelgaB ~Yer only mistake is serving your dark patron. Nay good can come of that.~
== %DORN_BANTER% ~Our arrangement is more beneficial to me than you could understand. And I will not be taking the time to explain why.~
== X3HelgaB ~As ye wish it. So long as ye fight well, I won't harass ye over it.~
EXIT


//Dynaheir 1
CHAIN IF ~InParty("X3Helga")
See("X3Helga")
InParty("Dynaheir")
!StateCheck("Dynaheir",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaDynaheir","GLOBAL",0)~ THEN %DYNAHEIR_BANTER% X3HelgaDynaheir1
~Ugh. What is that smell? Is thou unbathed, dwarf?~
DO ~SetGlobal("X3HelgaDynaheir","GLOBAL",1)~
== X3HelgaB ~I bathe in blood. The smell of our enemies makes them afraid.~
== %DYNAHEIR_BANTER% ~You mean...literally?~
== X3HelgaB ~Of course not. But I am not going to bathe, finger wiggler.~
== %DYNAHEIR_BANTER% ~Then do me a favor and stand away.~
EXIT 

//Edwin 
CHAIN IF ~InParty("X3Helga")
See("X3Helga")
InParty("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaEdwin","GLOBAL",0)~ THEN %EDWIN_BANTER% X3HelgaEdwin1
~Dwarf, I will ask this once. If you do not stop getting in the way of my spells, you will suffer the pain of one.~
DO ~SetGlobal("X3HelgaEdwin","GLOBAL",1)~
== X3HelgaB ~And if that happens, Red Fingerwiggler, ye will be in pain yerself.~
== %EDWIN_BANTER% ~You insolent dwarf. My magic is more than just the wiggle of fingers. (Not like your insignificant mind would understand.)~
== X3HelgaB ~Just shut up unless yer going to make insults into action.~ 
EXIT 

//Eldoth 
CHAIN IF ~InParty("X3Helga")
See("X3Helga")
InParty("Eldoth")
!StateCheck("Eldoth",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaEldoth","GLOBAL",0)~ THEN %ELDOTH_BANTER% X3HelgaEldoth1
~Don't the female dwarves stay at home?~
DO ~SetGlobal("X3HelgaEldoth","GLOBAL",1)~
== X3HelgaB ~I'll pretend ye didn't ask a stupid question.~
== %ELDOTH_BANTER% ~Watch your mouth, wench.~
== X3HelgaB ~Ye talked to me, idiot. Go bother somebody else.~
EXIT 

//Faldorn 
CHAIN IF ~InParty("X3Helga")
See("X3Helga")
InParty("Faldorn")
!StateCheck("Faldorn",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY]) 
Global("X3HelgaFaldorn","GLOBAL",0)~ THEN %FALDORN_BANTER% X3HelgaFaldorn1
~Oakfather, I will destroy all who threaten your kingdom.~
DO ~SetGlobal("X3HelgaFaldorn","GLOBAL",1)~
== X3HelgaB ~More to it than trees. We dwarves know the value of stone.~
== %FALDORN_BANTER% ~Your wretched halls of no air and life?~
== X3HelgaB ~Bah. Trees do have one use I suppose. Good cover.~
== %FALDORN_BANTER% ~Your lack of appreciation disgusts me, wretch.~
== X3HelgaB ~As if I bloody care, tree hugger. Leave me be.~ 
EXIT 

//Garrick 
CHAIN IF ~InParty("X3Helga")
See("X3Helga")
InParty("Garrick")
!StateCheck("Garrick",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY]) 
Global("X3HelgaGarrick","GLOBAL",0)~ THEN X3HelgaB X3HelgaGarrick1
~Listen, ye idiot. Ye stop that racket in battle. I want smashing, not soothing.~
DO ~SetGlobal("X3HelgaGarrick","GLOBAL",1)~
== %GARRICK_BANTER% ~A soothed heart is a focused sword.~
== X3HelgaB ~I be focused enough. But I want to be angry with fury.~
== %GARRICK_BANTER% ~Perhaps a more inspiring tune for battle?~
== X3HelgaB ~Ye get something that keeps me angry, and we'll call it a compromise.~
EXIT 

// Imoen 1
CHAIN IF ~InParty("X3Helga")
See("X3Helga")
InParty("Imoen")
!StateCheck("Imoen",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY]) 
Global("X3HelgaImoen","GLOBAL",0)~ THEN X3HelgaB X3HelgaImoen1
~Bah. Ye need to swing with more anger in battle, lass.~
DO ~SetGlobal("X3HelgaImoen","GLOBAL",1)~
== %IMOEN_BANTER% ~What's that? I'm not angry, just fighting for <CHARNAME> and our lives.~
== X3HelgaB ~And how ye going to do that with a smile?~
== %IMOEN_BANTER% ~Oh, you know, one grin at a time?~
== X3HelgaB ~*Grumble grumble grumble*~
EXIT 

// Jaheira 1
CHAIN IF ~InParty("X3Helga")
See("X3Helga")
InParty("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY]) 
Global("X3HelgaJaheira","GLOBAL",0)~ THEN X3HelgaB X3HelgaJaheira1
~Tree hugger. Ye lot are a bunch of peace lovers, aren't ye? Seems unfitting for a party like this.~
DO ~SetGlobal("X3HelgaJaheira","GLOBAL",1)~
== %JAHEIRA_BANTER% ~Peace must be fought for like anything else. Even animals fight for their own peace of mind.~
== X3HelgaB ~Bah. What glory can ye bloody find with the scurrying squirrel?~
== %JAHEIRA_BANTER% ~Not everything is about bloodshed or battle. You would do well to open your mind further, priest.~
== X3HelgaB ~All I see is a puffy cheek critter. Ye keep to your wood view, I'll keep to me battles.~
EXIT 

// Kagain 1
CHAIN IF ~InParty("Kagain")
See("Kagain")
InParty("X3Helga")
See("X3Helga")
!StateCheck("Kagain",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaKagain","GLOBAL",0)~ THEN %KAGAIN_BANTER% X3HelgaKagain1
~You'd earn a lot as a mercenary, Helga.~
DO ~SetGlobal("X3HelgaKagain","GLOBAL",1)~
== X3HelgaB ~Why pay me when I'm happy to get into some action?~
== %KAGAIN_BANTER% ~I should have hired ya instead. Cheap, passionate labor is hard to come by.~
== X3HelgaB ~I would nay work for ye, Kagain. I'll nay help with your greed. Give me a fight with more meaning, and perhaps my answer would be different.~
EXIT 

// Khalid 1
CHAIN IF ~InParty("Khalid")
See("Khalid")
!StateCheck("Khalid",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaKhalid","GLOBAL",0)~ THEN X3HelgaB X3HelgaKhalid1
~Yer a warrior, lad.~
DO ~SetGlobal("X3HelgaKhalid","GLOBAL",1)~
== %KHALID_BANTER% ~Of c-course.~ 
== X3HelgaB ~Then bloody act like it.~
== %KHALID_BANTER% ~W-what do you mean?~
== X3HelgaB ~Stand up with some spine. Be mean! Growl a bit.~
== %KHALID_BANTER% ~W-what?~
== X3HelgaB ~Bah. We'll talk later.~
EXIT

// Kivan 
CHAIN IF ~InParty("Kivan")
See("Kivan")
!StateCheck("Kivan",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaKivan","GLOBAL",0)~ THEN X3HelgaB X3HelgaKivan1
~You let your partner die, elf?~
DO ~SetGlobal("X3HelgaKivan","GLOBAL",1)~
== %KIVAN_BANTER% ~Be very careful what you say to me, dwarf.~
== X3HelgaB ~I lost mine too.~
== %KIVAN_BANTER% ~And so you are trying to poorly sympathize? I will not rest until Tazok is dead.~
== X3HelgaB ~And ye nay should. They say revenge is nay worthwhile, but when I say my husband's killer dead, was the best feeling in the world.~
== %KIVAN_BANTER% ~I will tell you if I feel the same when he lies dead before me.~
EXIT

// Minsc 1
CHAIN IF ~InParty("X3Helga")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaMinsc","GLOBAL",0)~ THEN X3HelgaB X3HelgaMinsc1
~Of all the human warriors I have seen in battle, ye battle truest to dwarven spirit, Minsc.~
DO ~SetGlobal("X3HelgaMinsc","GLOBAL",1)~
== %MINSC_BANTER% ~Minsc does not know what you mean, but I also say you have Boo and I's respect in battle~
== X3HelgaB ~Heh. Though how the hell has that little thing survived so many fights?~
== %MINSC_BANTER% ~Do not underestimate Boo. He may be squirrelly sometimes but he knows where to scurry.~
== X3HelgaB ~A true dwarf, then, in a hamster's body. Too bad he can't lift an axe and grow a thick mane.~
EXIT

// Montaron
CHAIN IF ~InParty("Montaron")
See("Montaron")
!StateCheck("Montaron",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaMontaron1","GLOBAL",0)~ THEN X3HelgaB X3HelgaMontaron1
~Most halflings don't fight with an inkling of viciousness,~
DO ~SetGlobal("X3HelgaMontaron1","GLOBAL",1)~
== %MONTARON_BANTER% ~I could show you quickly your folly, dwarf.~
== X3HelgaB ~I be saying ye be different, halfling. In an approving way.~
== %MONTARON_BANTER% ~That saved your neck, dwarf.~
== X3HelgaB ~Bah, don't get cocky. I could still smash you in with a hammer.~
EXIT

// Neera 

CHAIN IF ~InParty("X3Helga")
See("X3Helga")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaNeera","GLOBAL",0)~ THEN %NEERA_BANTER% X3HelgaNeera1
~What's your problem, Helga? You keep glaring at me.~
DO ~SetGlobal("X3HelgaNeera","GLOBAL",1)~
== X3HelgaB ~Your willy nilly finger-magic ain't right.~
== %NEERA_BANTER% ~It's fine, really it's fine. When is the last time I had an accident again?~
== X3HelgaB ~Far more recent than I'd want to recall, lass.~
== %NEERA_BANTER% ~And was it really that bad? You look fine to me.~
== X3HelgaB ~*Grumble* Bloody hells, ye are daft! Just keep yer fingers away from me lest I be tempted to smash them.~
EXIT

// Quayle
CHAIN IF ~InParty("X3Helga")
See("X3Helga")
!StateCheck("Quayle",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaQuayle","GLOBAL",0)~ THEN %QUAYLE_BANTER% X3HelgaQuayle1
~My big brain can solve anything!~
DO ~SetGlobal("X3HelgaQuayle","GLOBAL",1)~
== X3HelgaB ~Bloody gnome, shut that mouth of yours.~
== %QUAYLE_BANTER% ~Don't be so rude to me, simpleton.~
== X3HelgaB ~I'd be nicer if you were less mouth and more smacking with any brawn. And ye know what? Ye're all smart talk and no strength.~
== %QUAYLE_BANTER% ~Such a streak of violence only shows your simple intelligence.~
== X3HelgaB ~Bah. I'm done with this.~
== %QUAYLE_BANTER% ~Too smart for you!~
EXIT

// Rasaad

CHAIN IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaRasaad","GLOBAL",0)~ THEN X3HelgaB X3HelgaRasaad1
~When is our next battle? I am itching to just kill something.~
DO ~SetGlobal("X3HelgaRasaad","GLOBAL",1)~
== %RASAAD_BANTER% ~Better we could avoid violence. I do not enjoy indulging in it constantly.~
== X3HelgaB ~Then why are you bloody here?~
== %RASAAD_BANTER% ~I am here to aid <CHARNAME> in their efforts. If it can be done without violence, that would be for the best.~
== X3HelgaB ~That'd take all the fun out of it.~
== %RASAAD_BANTER% ~There can be enjoyment in altruism, in helping your enemy see the light, if you wish to try.~
== X3HelgaB ~Not as fun as smashing their face in with a hammer.~
EXIT

// SAFANA
CHAIN IF ~InParty("Safana")
See("Safana")
!StateCheck("Safana",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaSafana","GLOBAL",0)~ THEN X3HelgaB X3HelgaSafana1
~I don't see what all the talk is about, Safana.~
DO ~SetGlobal("X3HelgaSafana","GLOBAL",1)~
== %SAFANA_BANTER% ~What talk?~
== X3HelgaB ~About you being "pretty". You don't even have a beard.~
== %SAFANA_BANTER% ~And why would I even want that if I could? It'd be hideous.~
== X3HelgaB ~Bah. When I was younger, I sported quite the beard myself. You'd have envied me.~
== %SAFANA_BANTER% ~Uck. Keep your advice of appearances to yourself. I think I know what works.~
EXIT

// Shar-Teel 1
CHAIN IF ~InParty("X3Helga")
See("X3Helga")
!StateCheck("Sharteel",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaSharTeel","GLOBAL",0)~ THEN %SHARTEEL_BANTER% X3HelgaSharteel1
~You are a woman after my own heart, Helga. You let neither men nor your size hold you back.~
DO ~SetGlobal("X3HelgaSharTeel","GLOBAL",1)~
== X3HelgaB ~We have to. I raised a family and served as priestess on the battlefield. There be no time for reluctance.~
== %SHARTEEL_BANTER% ~You raised a family? With a man?~
== X3HelgaB ~He didn't have a girdle of masculinity if that be what yer implying.~
== %SHARTEEL_BANTER% ~And here I thought you were truly admirable.~
== X3HelgaB ~It nay be as bad as ye think. Ye just have to be prepared to carry most of the load. My former husband was nay as good as balancing as I.~
== %SHARTEEL_BANTER% ~You got rid of the useless, dung?~
== X3HelgaB ~Nay. He fell bravely in battle.~
== %SHARTEEL_BANTER% ~That made it easy, then.~
== X3HelgaB ~I'd have preferred he live, Shar-teel. Best ye learn a bit more respect before you let that tongue fire off.~
EXIT

// Skie 
CHAIN IF ~InParty("X3Helga")
See("X3Helga")
!StateCheck("Skie",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaSkie","GLOBAL",0)~ THEN %SKIE_BANTER% X3HelgaSkie1
~Oh, I think I have a cold. Can we get some rest now?~
DO ~SetGlobal("X3HelgaSkie","GLOBAL",1)~
== X3HelgaB ~You sneeze once and you think you've a cold? Tough it out, girl.~
== %SKIE_BANTER% ~It will get worse. You're a priestess, can't you make it go away?~ 
== X3HelgaB ~I could try. But I won't bother.~
== %SKIE_BANTER% ~Why are you being so mean?~
== X3HelgaB ~You need to learn to be tough in this world, girl. Consider this my way of helping you.~
EXIT

// Tiax
CHAIN IF ~InParty("X3Helga")
See("X3Helga")
!StateCheck("Tiax",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaTiax","GLOBAL",0)~ THEN %TIAX_BANTER% X3HelgaTiax1
~Soon, Tiax will rule. So very, very soon.~ 
DO ~SetGlobal("X3HelgaTiax","GLOBAL",1)~
== X3HelgaB ~Bloody hells, gnome. Just shut up about you and your bloody. If I have to hear about ruling and Cyric one more time through that bloody mouth of yours I'll...~
== %TIAX_BANTER% ~Become a willing servant?~
== X3HelgaB ~...Somebody save this blasted gnome from his mad idiocy and whack him into oblivion. Before I do it.~
EXIT

// VICONIA
CHAIN IF ~InParty("X3Helga")
See("X3Helga")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaViconia","GLOBAL",0)~ THEN %VICONIA_BANTER% X3HelgaViconia1
~What has your eyes upon me, dwarf?~
DO ~SetGlobal("X3HelgaViconia","GLOBAL",1)~
== X3HelgaB ~Of all the wicked monsters I've felled, my weapons have never tangled with a drow.~
== %VICONIA_BANTER% ~And would they tangle with an ally?~
== X3HelgaB ~Nay. That be the wall between a battle between you and I.~
== %VICONIA_BANTER% ~You'll find I don't share your enthusiasm for it. I've left you be, now leave me be.~
EXIT

// XAN
CHAIN IF ~InParty("Xan")
See("Xan")
!StateCheck("Xan",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaXan","GLOBAL",0)~ THEN X3HelgaB X3HelgaXan1
~So, a moonblade, eh?~
DO ~SetGlobal("X3HelgaXan","GLOBAL",1)~
== %XAN_BANTER% ~A grave burden that will outlive me.~
== X3HelgaB ~A weapon that can rival some of our finest dwarven makes. But is it true only an elf can use it?~
== %XAN_BANTER% ~Only it's chosen, and no other.~
== X3HelgaB ~How stupid. What's the point of that? If the dwarf warrior falls I want to pick up their blade and gut their killer for them.~
== %XAN_BANTER% ~And then you too, shall die.~
== X3HelgaB ~Heh. I'd take a good death like that.~
EXIT

// Xzar
CHAIN IF ~InParty("X3Helga")
See("X3Helga")
!StateCheck("Xzar",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaXzar","GLOBAL",0)~ THEN %XZAR_BANTER% X3HelgaXzar1
~I enjoy watching you butcher your foes, dwarf.~
DO ~SetGlobal("X3HelgaXzar","GLOBAL",1)~
== X3HelgaB ~I'd feel pride if that came from any mouth but yours.~
== %XZAR_BANTER% ~Your crushing and carving make it easy to collect samples for future experiments.~
== X3HelgaB ~Listen here, necromancer. Ye want to collect...stuff for your dark work? Make the kill yourself.~
== %XZAR_BANTER% ~Why would I do that when I've the perfect assistant?~
== X3HelgaB ~I've given ye my warning. Don't push yer luck.~
EXIT

// Yeslick 1
CHAIN IF ~InParty("X3Helga")
See("X3Helga")
!StateCheck("Yeslick",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaYeslick","GLOBAL",0)~ THEN %YESLICK_BANTER% X3HelgaYeslick1
~I worry of ye, Helga.~
DO ~SetGlobal("X3HelgaYeslick","GLOBAL",1)~
== X3HelgaB ~Worried? I be no child, Yeslick, even if your concern is kind.~
== %YESLICK_BANTER% ~Ye fight with too much fire. Too much anger.~
== X3HelgaB ~And what is bloody hell wrong with that?~
== %YESLICK_BANTER% ~I worry blood lust will give in to choosing bloodshed when it is not needed.~
== X3HelgaB ~I always long for battle. I'll give ye that. But I ain't going to murder just any ol' person either. I'll assure ye of that much, Yeslick.~
== %YESLICK_BANTER% ~I am less sure of it. Give me time to judge, lass.~
EXIT

//Branwen 2
CHAIN IF ~InParty("X3Helga")
See("X3Helga")
InParty("Branwen")
!StateCheck("Branwen",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaBranwen","GLOBAL",1)~ THEN %BRANWEN_BANTER% X3HelgaBranwen2
~I wish to concede the challenge, Helga.~
DO ~SetGlobal("X3HelgaBranwen","GLOBAL",2)~
== X3HelgaB ~Why? We both been fighting with our best efforts.~
== %BRANWEN_BANTER% ~I've seen your scars and wounds. You throw yourself into battle with fury and courage of an entire unit.~
= ~The killing blow means less than the contribution towards it.~
== X3HelgaB ~If that be how we evaluating it, then ye would be as much a winner than I, if not more.~
== %BRANWEN_BANTER% ~Equals, then?~
== X3HelgaB ~Aye. Equals.~
EXIT 

//Dynaheir 2
CHAIN IF ~InParty("X3Helga")
See("X3Helga")
InParty("Dynaheir")
!StateCheck("Dynaheir",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaDynaheir","GLOBAL",1)~ THEN %DYNAHEIR_BANTER% X3HelgaDynaheir2
~Thy smell has improved, Helga. Has thee taken my advice?~
DO ~SetGlobal("X3HelgaDynaheir","GLOBAL",2)~
== X3HelgaB ~*Grumble mumble grumble*~
== %DYNAHEIR_BANTER% ~I can't quite hear thee.~
== X3HelgaB ~Bah. Aye. Aye I did. Might as well hold up some standards if I be traveling with a group.~
== %DYNAHEIR_BANTER% ~On account of us all I thank thee. Thou should maintain it.~
== X3HelgaB ~Aye, aye. Until the next bloodbath.~
EXIT 

// Imoen 2
CHAIN IF ~InParty("X3Helga")
See("X3Helga")
InParty("Imoen")
!StateCheck("Imoen",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY]) 
Global("X3HelgaImoen","GLOBAL",1)~ THEN X3HelgaB X3HelgaImoen2
~Maybe yer way of doing things works for ye, lass.~
DO ~SetGlobal("X3HelgaImoen","GLOBAL",2)~
== %IMOEN_BANTER% ~Yeah, it seems to be doing that. So far, anyway.~
== X3HelgaB ~But if ye want to learn fighting right, I'm still here.~
== %IMOEN_BANTER% ~Oh, you mean with a lot of screaming and swinging and hitting my head against my enemies?~
== X3HelgaB ~Aye. The real way of fighting!~
EXIT 

// Jaheria 2
CHAIN IF ~InParty("X3Helga")
See("X3Helga")
InParty("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY]) 
Global("X3HelgaJaheira","GLOBAL",1)~ THEN X3HelgaB X3HelgaJaheira2
~Ye fight better than I thought, tree hugger.~
DO ~SetGlobal("X3HelgaJaheira","GLOBAL",2)~
== %JAHEIRA_BANTER% ~I do not fight for your validation, dwarf. Your half-hearted compliment means little to me.~
== X3HelgaB ~What, ye want me to actually say sorry?~
== %JAHEIRA_BANTER% ~That is your choice, if you wish to admit your earlier error.~
== X3HelgaB ~Bah. I'll keep being stubborn about that.~
== X3HelgaB ~...But ye do fight well. That I will concede.~
EXIT 

// Kagain 2
CHAIN IF ~InParty("Kagain")
InParty("X3Helga")
See("X3Helga")
!StateCheck("Kagain",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaKagain","GLOBAL",1)~ THEN X3HelgaB X3HelgaKagain2
~Your hunger of gold could be put to better use, Kagain.~
DO ~SetGlobal("X3HelgaKagain","GLOBAL",2)~
== %KAGAIN_BANTER% ~Ya putting forward a business proposition?~
== X3HelgaB ~Back in Torstultok, there be many nearby ruins and halls full of lost ore and riches. Recovering some of that could yield ye a profit.~
== %KAGAIN_BANTER% ~Torstultok? Thought it was abandoned?~
== X3HelgaB ~For the interests of those there, that be the tale that was woven, aye.~
== %KAGAIN_BANTER% ~I'll consider this proposition. If the yield is worthwhile.~
EXIT 

// Khalid 2
CHAIN IF ~InParty("Khalid")
See("Khalid")
!StateCheck("Khalid",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaKhalid","GLOBAL",1)~ THEN X3HelgaB X3HelgaKhalid2
~I don't understand ye at all, Khalid.~
DO ~SetGlobal("X3HelgaKhalid","GLOBAL",2)~
== %KHALID_BANTER% ~W-what do you mean?.~ 
== X3HelgaB ~Ye seem a coward. Ye seem spineless. Weak. Yet yer...not a bad warrior.~
== %KHALID_BANTER% ~I-I'm not sure what to say.~
== X3HelgaB ~Just that there be more to you than appearance, that be for sure.~
== %KHALID_BANTER% ~Well... *hem* thank you.~
== X3HelgaB ~Long as yer sword arm is more courageous than that mind of yers, we'll be all right.~
EXIT

// Minsc 2 
CHAIN IF ~InParty("X3Helga")
See("X3Helga")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaMinsc","GLOBAL",1)~ THEN %MINSC_BANTER% X3HelgaMinsc2
~Minsc has fought by your side for some time now, and Minsc is very impressed with you dwarf.~
DO ~SetGlobal("X3HelgaMinsc","GLOBAL",2)~
== X3HelgaB ~Heh. Throw me at any battle and I will see the enemy devastated.~
== %MINSC_BANTER% ~Minsc is wondering though, have you considered a pet hamster?~
== X3HelgaB ~I've got three big grown up hamsters already, Minsc. Nay wishing to have a fourth.~
== %MINSC_BANTER% ~Minsc did not know that the priestess had *three* hamsters.~
== X3HelgaB ~Aye, me children. Dwarves. Metaphor.~
== %MINSC_BANTER% ~You made a hamster? Minsc did not...know such a thing was possible.~
== X3HelgaB ~Nay did I. Nay did I.~
EXIT

// Shar-Teel 2
CHAIN IF ~InParty("X3Helga")
See("X3Helga")
!StateCheck("Sharteel",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaSharTeel","GLOBAL",1)~ THEN X3HelgaB X3HelgaSharteel2
~I wish to continue our discussion from before, Shar-Teel.~
DO ~SetGlobal("X3HelgaSharTeel","GLOBAL",2)~
== %SHARTEEL_BANTER% ~I had nothing further to add.~
== X3HelgaB ~A good, solid army is made up of men and women. Even if half of them be frustrating, it takes a team to beat the snot out of the enemy.~
== %SHARTEEL_BANTER% ~Why are you defending these pigs, Helga?~
== X3HelgaB ~I be saying while there are things that are reprehensible, they nay need to be universally loathed.~
== %SHARTEEL_BANTER% ~Marriage has blinded you. Here I thought you were a strong woman.~
== X3HelgaB ~Bah. Yer definition of strength is nay mine. But ye were right, there be nothing further to discuss.~
EXIT

// Yeslick 2
CHAIN IF ~InParty("X3Helga")
InParty("Yeslick")
See("Yeslick")
!StateCheck("Yeslick",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaYeslick","GLOBAL",1)~ THEN X3HelgaB X3HelgaYeslick2
~Ye a more experienced warrior than meself, Yeslick.~
DO ~SetGlobal("X3HelgaYeslick","GLOBAL",2)~
== %YESLICK_BANTER% ~Me time has been spent in the Cloakwood, fighting it's beasties. Only a bit before my imprisonment did I travel east.~
== X3HelgaB ~Ye received the warrior's training.~
== %YESLICK_BANTER% ~From my father and his father, that I did.~
== X3HelgaB ~I nay did, Yeslick. That be why I fight...differently.~
== %YESLICK_BANTER% ~It never be too late to learn, lass. Though ye seem to have grasped what ye needed well enough.~
== X3HelgaB ~Aye. But if ye wish to show me something I don't know...I be willing to listen to it.~
EXIT

// Kagain 3
CHAIN IF ~InParty("Kagain")
InParty("X3Helga")
See("X3Helga")
!StateCheck("Kagain",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaKagain","GLOBAL",2)~ THEN %KAGAIN_BANTER% X3HelgaKagain3
~Ye got more details about the riches 'bout Torstultok?~
DO ~SetGlobal("X3HelgaKagain","GLOBAL",3)~
== X3HelgaB ~Aye. But don't ye forget, the deal would be returning them to the temple. Gold would be the reward.~
== %KAGAIN_BANTER% ~How is this profitable, then?~
== X3HelgaB ~Ye find enough lost items of value, I'm sure it will be profitable.~
== %KAGAIN_BANTER% ~And what stops me from just taking the more valuable items?~
== X3HelgaB ~Me hammer, for starters.~
== %KAGAIN_BANTER% ~This would be for chump change. I think I'll decline.~
== X3HelgaB ~Suit yerself. Perhaps it best yer greedy hands don't get tempted as is.~
EXIT 


// Yeslick 3
CHAIN IF ~InParty("X3Helga")
InParty("Yeslick")
See("X3Helga")
!StateCheck("Yeslick",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaYeslick","GLOBAL",2)~ THEN %YESLICK_BANTER% X3HelgaYeslick3
~I have seen enough to make a judgment of ye, Helga.~
DO ~SetGlobal("X3HelgaYeslick","GLOBAL",3)~
== X3HelgaB ~Ye make it sound like I be judged in some tribunal.~
== %YESLICK_BANTER% ~Nay.~
== X3HelgaB ~Then spill your judgment, then.~
== %YESLICK_BANTER% ~I be watching ye in and out of battle. I think ye fight hard to hide the strains of your wounds. I see ye tend to yerself during our rests. Ye don't need to compensate, lass.~
== X3HelgaB ~Bah. I would be a fool to call ye a liar. But I will ask this nicely, keep it to yourself.~
== %YESLICK_BANTER% ~Do ye need help with your healing, lass?~
== X3HelgaB ~Nay. Some things come with age, as ye know as well as I. But I will not fight like I'm any older, either.~
== %YESLICK_BANTER% ~As ye wish, lass. Yer fighting still has my concern, but also my admiration.~ 
EXIT
