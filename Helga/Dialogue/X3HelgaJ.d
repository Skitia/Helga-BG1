BEGIN X3HelgaJ

// First Quest Reminder 

IF ~Global("X3HelgaQuestExpire","GLOBAL",2)!Dead("X3HogreL")~ X3H.Quest1E 
SAY ~I hope we be making our way to the bloody ogre chief soon. I long to draw out lots and lots of blood.~
IF ~~ DO ~SetGlobalTimer("X3HelgaQuestTen","GLOBAL",TEN_DAYS)IncrementGlobal("X3HelgaQuestExpire","GLOBAL",1)~ EXIT 
END 

// Second Quest Reminder 

IF ~Global("X3HelgaQuestExpire","GLOBAL",4)!Dead("X3HogreL")~ X3H.Quest2E 
SAY ~The hell is taking so long to find one damn ogre chief?! I long for the battlefield!~
++ ~Hold your horses, we get there when we get there.~ + X3H.Quest2EGrumble
++ ~I'm sorry, I'll make my way there right away.~ + X3H.Quest2EGrumble
++ ~I've lost all interest on this little crazy quest of yours.~ + X3H.Quest2ELeave 
END 

IF ~~ X3H.Quest2EGrumble 
SAY ~Ye best be making it fast, else I be having to find a more capable group! Monsters don't slaying themselves.~
IF ~~ DO ~SetGlobalTimer("X3HelgaQuestTen","GLOBAL",TEN_DAYS)IncrementGlobal("X3HelgaQuestExpire","GLOBAL",1)~ EXIT 
END 

IF ~~ X3H.Quest2ELeave 
SAY ~I be returning home to find another group. Ye somehow bloody manage to do it on yer own, come find me in my home in Beregost. Until then, I be leaving this sloth party.~
IF ~~ DO ~SetGlobal("X3HelgaQuestExpireOne","GLOBAL",7)SetGlobal("X3HelgaQuestTimerDone","GLOBAL",1)EscapeAreaMove("%bg1_eet_symbol%3302",252,249,SW)~ EXIT 
END 



// Third Strike 

IF ~Global("X3HelgaQuestExpire","GLOBAL",6)!Dead("X3HogreL")~ X3H.Quest1E 
SAY ~Bah. I be tired of all the waiting. I be returning home to find another group. Ye somehow bloody manage to do it on yer own, come find me in my home in Beregost, until then, I'm bloody leaving this sloth party.~
IF ~~ DO ~SetGlobal("X3HelgaQuestExpireOne","GLOBAL",7)SetGlobal("X3HelgaQuestTimerDone","GLOBAL",1)EscapeAreaMove("%bg1_eet_symbol%3302",252,249,SW)~ EXIT 
END 

// Quest Done 

IF ~Dead("X3HogreL")Global("X3HelgaQuest","GLOBAL",1)~ X3HQuestDone 
SAY ~Bloody brilliant. Bastard is dead and one more blow to these rotten ogre. I ought to call ye giant killer.~
=  ~Ye have my services as long as ye need them. By the looks of it ye be in for many battles, and Haela will be most pleased to see more beasts fallen.~
++ ~Thank you, Helga. I am honored to have you with us.~ + X3H.QuestDoneA
++ ~It wasn't hard at all.~ + X3H.QuestDoneA
++ ~So long as you remain useful, we may continue our partnership~ + X3H.QuestDoneA
++ ~I've no further interest in your presence, now that this ogre king is slain.~ + X3H.QuestDoneB
END 

IF ~~ X3H.QuestDoneA 
SAY ~Well then, to the next battle!~
IF ~~ DO ~AddJournalEntry(@4,QUEST_DONE)AddexperienceParty(600)SetGlobal("X3HelgaQuest","GLOBAL",2)~ EXIT 
END 

IF ~~ X3H.QuestDoneB 
SAY ~Bah. Yer loss. Ye change yer mind, I be in my home in Beregost.~
IF ~~ DO ~AddJournalEntry(@4,QUEST_DONE)AddexperienceParty(600)SetGlobal("X3HelgaQuest","GLOBAL",2)LeaveParty()EscapeAreaMove("%bg1_eet_symbol%3302",252,249,SW)~ EXIT 
END 

//Talk 1 
IF ~Global("X3HelgaTalk","GLOBAL",2)~ Talk1
SAY ~Someone get a good fire going. Gonna cook this venison I've been saving.~ [X3HSonD]
++ ~Excellent. I'm glad we have someone to handle the cooking.~ + T1.A
++ ~I appreciate you tending to our food, Helga.~ + T1.A
++ ~Dwarven cooking? Not interested.~ + T1.A
END 

IF ~~ T1.A
SAY ~Ye don't gonna have the strength to kill enemies if ye don't eat right. Mind lending a hand?~
++ ~Sure, just tell me what you need done.~ + T1.B
++ ~No thanks. I am weary and need to get straight to resting.~ + T1.C
++ ~I'll just watch if you don't mind.~ + T1.D 
IF ~~ EXIT 
END 

IF ~~ T1.B 
SAY ~Can't just survive off of poor rations. See this? Pour it on real good. Going to mix it all in my pot to form nice stew.~
IF ~~ + T1.E 
END 

IF ~~ T1.C 
SAY ~Bah. Where's yer bloody stamina? Ye'll want the meal while it's hot and fresh. Not the same when you're eating rationed leftovers.~
IF ~~ + T1.CR 
END 

IF ~~ T1.CR 
SAY ~Get some rest then. Seems ye need it.~
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)RestParty()~ EXIT 
END 

IF ~~ T1.D 
SAY ~Heh. Better to learn hands on, but if that's how ye wish to go about this. Just going to pour this salt on real good, make sure this lasts.~
IF ~~ + T1.E 
END 

IF ~~ T1.E
SAY ~I don't have much of this on me, but figure I'd make my first cooked meal for ye pleasant.~
= ~All done. Give it a taste.~
++ ~Mmm. This is good.~ + T1.F
++ ~It's okay.~ + T1.F
++ ~Bleh! What is this?!~ + T1.G
END 

IF ~~ T1.F 
SAY ~Nay meant to be super tasty, but it is meant to help ye be strong. Granda' taught me.~
= ~Da was always was bland in his flavoring...but all that meat he gave me when I was a wee lass is still with me now in my strength. Proud of that.~
++ ~Where is your grandfather now?~ + T1.Dead1 
++ ~I can definitely see that. You seem almost more warrior than priestess.~ + T1.Almost1
++ ~I can see~ + T1.CookG 
END 

IF ~~ T1.Dead1 
SAY ~He died of old age several summers ago. Still miss him...but I can feel close to him when I follow his cooking methods, heh.~
IF ~~ + T1.CookG 
END 

IF ~~ T1.Almost1
SAY ~Many of my fellows do train well in weapons, and some even are warriors. But I focus less on that and more on raw strength. Ye never know when ye don't get to have a weapon close to ye.~
IF ~~ + T1.CookG 
END 

IF ~~ T1.CookG 
SAY ~I'll cook again for ye in the future. Ye'll probably like it as well.~
++ ~I look forward to it.~ + T1.H
++ ~I should get some rest now.~ + T1.CR
++ ~Uh, right. Yes.~ + T1.H
END 

IF ~~ T1.G 
SAY ~Are ye insulting me granda's recipe? This is quality food. Bah. Tasty don't always mean it's the best for success.~
= ~Pah. I'll admit granda' was always was bland in his flavoring...but all that meat he gave me when I was a wee lass is still with me now in my strength. Proud of that.~
++ ~Where is your grandfather now?~ + T1.Dead2
++ ~I can definitely see that. You seem almost more warrior than priestess.~ + T1.Almost2 
++ ~I can see~ + T1.CookB
END 

IF ~~ T1.Almost2
SAY ~Many of my fellows do train well in weapons, and some even are warriors. But I focus less on that and more on raw strength. Ye never know when ye don't get to have a weapon close to ye.~
IF ~~ + T1.CookB 
END 

IF ~~ T1.Dead2 
SAY ~He died of old age several summers ago. Still miss him...but I can feel close to him when I follow his cooking methods, heh.~
IF ~~ + T1.CookB 
END 

IF ~~ T1.CookB
SAY ~I'll cook again in the future, and I'll keep in mind yer weak palette.~
++ ~Sounds dreadful.~+ T1.H
++ ~I should get some rest now.~ + T1.CR
++ ~Thank you for being mindful.~ + T1.H 
END 

IF ~~ T1.H 
SAY ~Heh. Get some rest then. More battles to come, eh?~
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)RestParty()~ EXIT 
END 

// Talk2 

IF ~Global("X3HelgaTalk","GLOBAL",4)~ Talk2 
SAY ~The good old road. Beats loafing around Beregost any night.~ [X3HSonD]  
++ ~Are you from Beregost?~ + Talk2.A
++ ~I wouldn't mind relaxing in the town, myself.~ + Talk2.B
++ ~Aye, I prefer the open road to sitting around.~ + Talk2.C
END 



IF ~~ Talk2.A 
SAY ~Nay. Moved there not long ago, tired of seeing the same mountain home.~
= ~Battle nay come to a well defended dwarven hall. So I come to the battle once more.~ 
++ ~Once more?~ + Talk2.D
++ ~What was it like in a dwarven hall?~ + Talk2.E
++ ~You seem obsessed with fighting. Almost too much.~  + Talk2.F
END 

IF ~~ Talk2.B
SAY ~Then ye soft. Luxury makes ye fat and slovenly. Ye sure ye cut out for this life?~
++ ~Do not mistake my words for laziness; hard work makes luxury all the more pleasing.~ + Talk2.G
++ ~I'm not sure.~ + Talk2.H
++ ~Don't question me, Helga.~ + Talk2.I
END 

IF ~~ Talk2.C 
SAY ~That's how it should be. Battle has to be sought out these days unless ye wish to wait for a blasted political war by some noble snob.~
++ ~Are you from Beregost?~ + Talk2.A
++ ~You seem obsessed with fighting. Almost too much.~ + Talk2.F
++ ~Speaking of, we should continue on.~ + Talk2.Exit 
END 

IF ~~ Talk2.D 
SAY ~Was retired for decades after a slew of adventure, except for my duties to Haela Brightaxe, but nay the many battles I did in my glorious youth.~
= ~I was a giant killer, and that is why you met me hunting them.~
++ ~Do you have stories to share?~ + Talk2.J 
++ ~Is that all you slew?~ + Talk2.K 
++ ~I hope you're not rusty.~ + Talk2.L
END 
 
IF ~~ Talk2.E 
SAY ~Ordered. Traditional. And dull. New ideas are slow to catch on there. But there be nothing more beautiful than dwarven hall structure and art.~
= ~But my heart is for where danger lies, where threat to kin lurk. And my axe hand longed for battle once more.~
++ ~Once more?~ + Talk2.D
++ ~You seem obsessed with fighting. Almost too much.~  + Talk2.F
++ ~Speaking of, we should continue on.~ + Talk2.Exit 
END 

IF ~~ Talk2.F 
SAY ~Bah. And why not? It makes the blood quicken, the heart leap, the moment thrilling. 'Tis worth living for.~
++ ~There's more to life than killing.~ + Talk2.M 
++ ~I suppose I can agree that it is exciting.~ + Talk2.N 
++ ~You sound absolutely lustful to kill, it's abhorrent.~ + Talk2.O 
END 
// A Little overboard with exit variation, but oh well. 
IF ~~ Talk2.Exit 
SAY ~Aye. To the next fight, then.~ 
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ Talk2.G 
SAY ~Ah. I can give ye that then, I'll give ye that. Let's earn grand reward then, eh?~
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ Talk2.H 
SAY ~Bah, ye need more spine. Prove yerself in battle and I'll mince my words.~
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ Talk2.I 
SAY ~Ye've got spine. But prove yourself in battle to me. I'll be watching.~
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ Talk2.J 
SAY ~Aye, I have one. Listen well and good, now.~ 
IF ~~ + Talk2.Story
END

IF ~~ Talk2.K 
SAY ~Bah, I've my share of other foes, but giants will always be my heart's favorite. I'll show ye I can handle anything soon enough.~
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END

IF ~~ Talk2.L 
SAY ~Rusty?! I'll forgive yer ignorant insult and show ye with my weapon. Point at the next enemy, and Haela and I will see it clobbered!~
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END

IF ~~ Talk2.M 
SAY ~Aye, there be more than life to killing, and I've dealt with that life. But there be little as exciting, and I be looking to get to the next battle.~
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END

IF ~~ Talk2.N 
SAY ~Good. Let's find another battle to get a thrill from!~
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END

IF ~~ Talk2.O 
SAY ~Bah, settle down! I ain't a killer of just anyone, I've got bloody sense. Bah, forget it...youth!~
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END

IF ~~ Talk2.Story 
SAY ~Back in the keep with the other gals, we had a whole pack of them try to storm the place in revenge after we had a clash against a couple of the blokes, with our people coming out on top.~
= ~Several of them were throwing boulders the size of themselves towards the keep. We needed a good defense and we needed it fast.~
= ~I and a couple of others went to the hightest point of the keep, loaded the ballista, and set the ballista up.~
++ ~Go on.~ + Talk2.Story2 
++ ~You wouldn't fight them close up?~ + Talk2.Story1 
++ ~This is longer than I thought. We have battles in the present to get to.~ + Talk2.Exit 
END 

IF ~~ Talk2.Story1 
SAY ~Nay yet. Keep listening.~
IF ~~ + Talk2.Story2 
END 

IF ~~ Talk2.Story2 
SAY ~Fired a good round at one of the hurlers. Smashed the rock it was holding and had it crumble apart on it. Fired another one right through its head.~
= ~We couldn't slow them down though. So we descended, rallied together at the front, and charged them.~
= ~One by one by one, the giants fell or scampered. There was nothing like dodging their stones and blocking their large weapons with ten to one numbers. A grand memory.~
++ ~Did they ever bother you again?~ + Talk2.Story3 
++ ~Ten to one? You must be exaggerating, aren't you?~ + Talk2.Story4
++ ~That was a good story. Let's make some of our own now.~ + Talk2.Exit 
END 

IF ~~ Talk2.Story3 
SAY ~Nay. My sisters hunted them to the last...then things got a mite dull for a while.~
= ~But with ye, things are exciting once again...and I can't wait for a battle to match it.~
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ Talk2.Story4 
SAY ~Heh. Ye should nay be so skeptical. The odds not always be with us even on yer own adventure, yet here we are.~
= ~Things are exciting again...I can't wait for a battle to match the great one with the giants and my sisters. I think ye'll yet step into one of great glory soon enough.~
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END 

// Talk 3 

IF ~Global("X3HelgaTalk","GLOBAL",6)~ Talk3 
SAY ~My mind can't help but wander between battles to what the wee ones be getting up to.~ [X3HSonD]
++ ~Wee ones?~ + Talk3.A
++ ~Are you talking about children?~ + Talk3.A 
++ ~Why is your mind wandering at all? We should stay focused.~ + Talk3.B
END 

IF ~~ Talk3.A 
SAY ~Aye, Helen and Berk. My children. Out fighting themselves now. Makes a mother bloody proud.~
++ ~You are a mother?~ + Talk3.C 
++ ~Where are they now?~ + Talk3.D
++ ~Let's just focus on staying alive.~ + Talk3.B 
END 

IF ~~ Talk3.B 
SAY ~Focus. Bah. As ye will have it. Lead on.~ 
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END

IF ~~ Talk3.C
SAY ~Aye. I retired for a time to be a mother. I've served my kin in battle and motherhood. Ye shouldn't be so surprised.~
++ ~It just seems odd, I thought you would prefer the freedom to do battle.~ + Talk3.E
++ ~Where are your kids now?~ + Talk3.D 
++ ~Did they turn out to be as battle craving as you?~ + Talk3.F
END 

IF ~~ Talk3.D 
SAY ~Off forging their own paths. They're serving the hall I hail from as proud sentinels for the hall's army.~
IF ~~ + Talk3.Exit 
END

IF ~~ Talk3.E 
SAY ~I've said almost nothing is as enjoyable as battle. Motherhood be the stern competition.~
IF ~~ + Talk3.Exit 
END 

IF ~~ Talk3.Exit 
SAY ~Still, I ain't have any regrets about parenting. Ye may understand someday yerself, when the time comes.~
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END

IF ~~ Talk3.F 
SAY ~Ha! They be of softer stuff. Bit more tactical than I.~
IF ~~ + Talk3.Exit 
END 

// Talk 4

IF ~Global("X3HelgaTalk","GLOBAL",8)~ Talk4 
SAY ~I would spoke with ye a moment. Why do ye fight?~ [X3HSonD]
++ ~I want to make the world around safer.~ + Talk4.A
++ ~Because people keep trying to kill me.~ + Talk4.B
++ ~Isn't it obvious?~ + Talk4.C
++ ~Why the question?~ + Talk4.D
++ ~Because I like to make things die.~+ Talk4.E
END 

IF ~~ Talk4.A
SAY ~Heh. Suppose that motives some.~
IF ~~ + Talk4.Fight 
END 

IF ~~ Talk4.B 
SAY ~Aye, that's why ye take the fight to them first. Suppose if ye don't know who they are though, not easy.~
IF ~~ + Talk4.Fight 
END 

IF ~~ Talk4.C
SAY ~Why would I ask ye a question if I could guess the answer meself?~ 
++ ~I want to make the world around safer.~ + Talk4.A
++ ~Because people keep trying to kill me.~ + Talk4.B
++ ~Because I like to make things die.~+ Talk4.E
++ ~I'm not interested in talking about this.~ + Talk4.Exit 
END 

IF ~~ Talk4.D 
SAY ~Tells a lot of a warrior why they battle and shed blood.~
++ ~I want to make the world around safer.~ + Talk4.A
++ ~Because people keep trying to kill me.~ + Talk4.B
++ ~Because I like to make things die.~+ Talk4.E
++ ~I'm not interested in talking about this.~ + Talk4.Exit 
END 

IF ~~ Talk4.E 
SAY ~Eh. As much as I like to kill, that nay be an answer I like much.~
IF ~~ + Talk4.Fight 
END 

IF ~~ Talk4.Exit 
SAY ~Bah. Cowardly then. Suit yerself.~ 
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END

IF ~~ Talk4.Fight 
SAY ~I fight for dwarf kind. Every dead monster, every little beast gone, for profit, glory , or not, allows my people to live more at ease.~
= ~Nay longer they just be in dwarven halls near or elsewhere, they spread about and I nay wish to see their bodies about. That fighting is a thrill makes it enjoyable duty.~
++ ~What about everyone else? Why only dwarves?~ + Talk4.F 
++ ~I suppose that is a noble reason.~ + Talk4.G
++ ~I had expected a simpler reason from you, given your eagerness for battle.~ + Talk4.H
END 

IF ~~ Talk4.F 
SAY ~The world's too bloody big to fight for all. My people are the heart, and they are what Haela cares most for.~
IF ~~ + Talk4.Exit2 
END 

IF ~~ Talk4.Exit2
SAY ~But so long as our goals align, ye'll have me to rely on.~
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END

IF ~~ Talk4.G 
SAY ~Ain't about noble. Just about getting the work needed to get things done. Bloody humans and monsters always screwing things up.~ 
IF ~~ + Talk4.Exit2 
END 

IF ~~ Talk4.H 
SAY ~Battle is glorious, a worship all its own almost. The service to my goddess is best dedicated on the field, or rites before the battle.~
= ~Every battle is for my people, an example for them to follow.~
IF ~~ + Talk4.Exit2 
END  

// Talk 5 

IF ~Global("X3HelgaTalk","GLOBAL",10)~ Talk5 
SAY ~So, when ye bark out yer orders, ye do it with any planning in mind or just on the spot?~ [X3HSonD]
++ ~I plan things out. I'm prepared for any foe, any situation to lead our group to victory.~ + Talk5.A 
++ ~I think things out on the spot.Things can change at any moment and I prefer to improvise.~ + Talk5.B 
++ ~A bit of both. A plan can break down fast and improvisation may be necessary.~ + Talk5.C 
END 

IF ~~ Talk5.A 
SAY ~Too rigid. Ye go in with a plan, ye'll go out with friends dead. But ye manage well enough so far, I suppose.~
IF ~~ + Talk5.Fight 
END 

IF ~~ Talk5.B 
SAY ~That's the way to do it. Battle ain't a chess game, like those...eh...humans of that knight deity. Nay. It a game of tenacity and might.~
IF ~~ + Talk5.Fight 
END

IF ~~ Talk5.C 
SAY ~Bit of both? Suppose that makes sense.~
IF ~~ + Talk5.Fight 
END

IF ~~ Talk5.Fight 
SAY ~Battle is all about the moment. You read the swing, the weapon, estimate it's range, watch for feints. Some monsters are stupid, predictable. Others...cunning, clever.~
= ~Best strategy is to assess and reassess and never surrender. Ye even think about surrendering and ye lost and shamed yer gods.~
++ ~And what if the odds are impossible?~ + Talk5.D
++ ~I think I understand.~ + Talk5.G
++ ~I don't agree with your madness. That sounds like planning to me.~ + Talk5.F
END 

IF ~~ Talk5.D 
SAY ~A priestess nay believe in impossible odds. If death be the only end, then ye take as many with ye as ye can. Weaken them enough so that the next warriors shall prevail.~
= ~But believing in defeat only makes it more certain.~
++ ~I think I understand.~ + Talk5.G
++ ~Let us agree to disagree.~ + Talk5.G
END 

IF ~~ Talk5.H
SAY ~I thank ye for indulging my curiosity.~ 
++ ~Of course. You are a good friend.~ + Talk5.I 
++ ~It was an interesting conversation.~ + Talk5.J 
++ ~Just don't expect to learn everything.~ + Talk5.K 
++ ~We should get going.~ + Talk5.L 
END 

IF ~~ Talk5.F 
SAY ~In the moment, but not in advance. There be a difference, if ye were listening.~ 
++ ~What if the battle cannot be won?~ + Talk5.D 
++ ~I think I understand.~ + Talk5.G 
++ ~Let us agree to disagree.~ + Talk5.G 
END 

IF ~~ Talk5.G
SAY ~Ye nay need to agree. There be many ways to get through the glorious maze of battle. But I thank ye for indulging my curiosity.~ 
++ ~Of course. You are a good friend.~ + Talk5.I 
++ ~It was an interesting conversation.~ + Talk5.J 
++ ~Just don't expect to learn everything.~ + Talk5.K 
++ ~We should get going.~ + Talk5.L
END 

IF ~~ Talk5.I 
SAY ~Heh. 'Tis good to hear that someone young considers me a friend. An honor to fight with ye as well, friend.~
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END

IF ~~ Talk5.J 
SAY ~Aye. It is good to have your mind stimulated. Wisdom will keep ye afloat as we fight our next battles.~
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END

IF ~~ Talk5.K 
SAY ~Bah. I nay pry more than I must. Nay a gossip or a nosy dwarf. Ye may have yer privacy as ye wish it.~
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END

IF ~~ Talk5.L
SAY ~As ye wish, <CHARNAME>.~ 
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END


// Talk 6
IF ~Global("X3HelgaTalk","GLOBAL",12)~ Talk6 
SAY ~Ye want to know why I began dedicated worship to Haela Brightaxe, <CHARNAME>?~ [X3HSonD]
++ ~Certainly.~ + Talk6.A
++ ~Why the question?~ + Talk6.B
++ ~I don't.~ + Talk6.Exit 
END 

IF ~~ Talk6.A
SAY ~I was at the cusp of adulthood, wandering out of the halls to see a smite of sunshine.~
= ~A small group of starved wolves though they could get an ambush on me. I nay even wait for their charge, but charged them first.~
++ ~Is it an ambush if you charged at them?~ + Talk6.D
++ ~Go on.~ + Talk6.E
++ ~I thought this would be more exciting.~ + Talk6.Exit 
END 

IF ~~ Talk6.B 
SAY ~I find conversation helps pass the time between battle.~
++ ~I'll listen then.~ + Talk6.A 
++ ~I'm not interested in conversation.~ + Talk6.Exit 
END 

IF ~~ Talk6.Exit
SAY ~Bah. Suppose we can pass the time until the next battle in silence.~ 
IF ~~ DO ~IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ Talk6.D 
SAY ~Heh. Perhaps not. But the may have preyed on something else, so I gave them a clobbering to send them scattering, though took a few wounds myself.~
IF ~~ + Talk6.F 
END 

IF ~~ Talk6.E 
SAY ~I gave them a good clobbering that sent them scattering, though took a few wounds myself.~
IF ~~ + Talk6.F 
END 

IF ~~ Talk6.F 
SAY ~It was one of her faithful that tended me and spoke well of the inspiration of my courage, and how I'd do well as one of the faithful.~
= ~Took her advice to heart, and became one of her acolytes. Remained one of the faithful ever since.~
++ ~That was an interesting beginning.~ + Talk6.G 
++ ~Do you have any regrets?~ + Talk6.H
++ ~Dull. Perhaps try a more interesting tale next time.~ + Talk6.I
END 

IF ~~ Talk6.G 
SAY ~Aye. A simple one, but one I will ever be proud of. Now let's find some more battles to add to the tale.~
IF ~~ DO ~IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END 


IF ~~ Talk6.H 
SAY ~Nay. No regrets in laying myself in service for Haela, I be proud to die in her name when the time comes.~
IF ~~ DO ~IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ Talk6.I 
SAY ~Bah. Then ye can tell the tale to pass the time, then, or get us on to the next fight. I be itching for more monsters to strike down!~
IF ~~ DO ~IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END 

IF ~Global("X3HelgaDurlag","GLOBAL",1)~ TalkDurlag
SAY ~We really be in Durlag's dungeon. Meant to fill an entire, thriving clan.~
= ~There will still be trap everywhere. If the tales ring true of his paranoia, it be as dangerous as me home.~
++ ~It may be dangerous, but we need to move forward all the same.~ + D.1
++ ~Can you share anything that might help us?~ + D.2 
++ ~Helga, afraid?~ + D.3 
END 

IF ~~ D.1 
SAY ~I nay be discouraging it. Just do nay touch something unless ye know what ye are doing.~
IF ~~ DO ~IncrementGlobal("X3HelgaDurlag","GLOBAL",2)~ EXIT 
END

IF ~~ D.2
SAY ~I nay be discouraging it. Just do nay touch something unless ye know what ye are doing.~
IF ~~ DO ~IncrementGlobal("X3HelgaDurlag","GLOBAL",2)~ EXIT 
END

IF ~~ D.3
SAY ~Afraid?! Ye be asking for a smack, <CHARNAME>. Nay, just step carefully 'bout here.~
IF ~~ DO ~IncrementGlobal("X3HelgaDurlag","GLOBAL",2)~ EXIT 
END

// GENDER CHANGE, Make sure this is below talks. 

IF ~Global("X3HelgaSexChange","GLOBAL",1)~ EGender
SAY ~What in...I got a full fluffy beard!~
= ~This ain't so bad...nay need to rush on removing this curse.~
IF ~~ DO ~SetGlobal("X3HelgaSexChange","GLOBAL",2)~ EXIT
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
+~Global("X3HelgaOgreTopic","GLOBAL",0)~+ ~What made you want to hunt ogres?~ DO ~SetGlobal("X3HelgaOgreTopic","GLOBAL",1)~  + Helga.PT1Ogre  // ~What made you want to hunt ogres?~
+~GlobalGT("X3HelgaTalk","GLOBAL",4)Global("X3HelgaHaelaTopic","GLOBAL",0)~+ ~Can you tell me more about Haela Brightaxe?~ DO ~SetGlobal("X3HelgaHaelaTopic","GLOBAL",1)~ + Helga.PT2Haela 
+~GlobalGT("X3HelgaTalk","GLOBAL",6)Global("X3HelgaHusbandTopic","GLOBAL",0)~+ ~You mentioned children before, but what about a husband?~ DO ~SetGlobal("X3HelgaHusbandTopic","GLOBAL",1)~ + Helga.PT3Husband
++ ~Your voice sounds off.~ EXIT 
++ ~Never mind, let's get going.~ EXIT 
END 

IF ~~ FixString 
SAY ~Bah! I be just getting older. Just let me be clearing it up.~
IF ~~ DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("X3HReset")~ EXIT 
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

IF ~~ Helga.PT1Ogre
SAY ~Giants are our ancestral enemies. Ogres may only be giant-kin, but they be worthy foes all the same.~
= ~Many are foolish to believe their size grants them victory. They see their error  very quickly with a weapon to their knees.~
= ~These band of giants have been gathering around the southern lands, spreading from their lair to the west. That spreading I plan to cease.~
++ ~Let's talk about something else.~ + Helga.PTalk 
++ ~Let's continue on.~ + HelgaP1Exit 
END  

IF ~~ HelgaP1Exit 
SAY ~As ye wish.~
IF ~~ EXIT 
END 

IF ~~ Helga.PT2Haela
SAY ~Haela Brightaxe is my patron, and my sisters who follow her wander into the fray, battling monsters and charging into the fray in her glorious name.~
= ~There are a few males, but most of us are sisters, luck maidens wandering around the realms in search of the next battle to aid our people.~
++ ~Thank you for the explanation.~ + PT2Thanks 
++ ~You sound like a berserker.~ + PT2Berserk
+~OR(3)Class(Player1,CLERIC_ALL)InParty("Branwen")CheckStatGT(Player1,50,LORE)~+ ~This seems similar to the god of Tempus.~ + PT2Tempus
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
IF ~InParty("Branwen")~ + PT2Branwen 
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

I_C_T BJORNI 1 X3HelgaBJORNI1 
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~I always be relishing the chance to slaughter ogres or their half-ilk, if ye bid it, <CHARNAME>.~
END 

I_C_T MULAHE 0 X3HelgaMULAHE3 
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~This be the fellow? Don't look like much to me.~
END 

I_C_T RAIKEN 3 X3HelgaRaiken
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~Rattle pates? He'd be blessed to have even one of my arm's contribute.~
END

I_C_T TAZOK 4 X3HelgaTazok4
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~Bah. Talk about ruthless leadership.~
END

I_C_T DRASUS 0 X3HelgaDrasus0
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~Straight to the point? I be game for this.~
END

I_C_T FABER 0 X3HelgaFaber0 
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~Bloody coward.~
== FABER ~Guards, guards!~
END 

I_C_T SLAVE6 0 X3HelgaSlave6 
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~If yer so enthusiastic, bring down the hammer with us.~
== SLAVE6 ~Uh...no, but give them a good bludgeoning for me.~
END 

I_C_T TIPIAN 2 X3HelgaTipian2 
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~Fortunately lad, we do, and we be planning on it.~
== TIPIAN ~I hope you can.~
END 

I_C_T DAVAEO 0 X3HelgaDAVAEO0
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~Nay, ye will be getting crushed by our might!~
== DAVAEO ~We shall see!~
END 

I_C_T STEPHA 0 X3HelgaSTEPHA0 
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~There be a slim chance at best this fellow had nothing to do with the suffering of everyone down here.~
END 

I_C_T RIELTA 1 X3HelgaRielta1 
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~Let him lose his temper. I say we go for it, <CHARNAME>, if ye got the guts.~
END

I_C_T KIRINHAL 3 X3HelgaKIRINHAL3
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~This was done for a reason, and Durlag be no fool. Be no fool yerself.~
END 

I_C_T Kiel 0 X3HelgaKiel0
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~Durlag's kin. Moradin have mercy.~
END 

I_C_T ISLANNE 0 X3HelgaISLANNE0
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~Seeing her form gives me sorrow...too many good clans have met lamentable fates.~
END 

I_C_T DURLAGT 1 X3HelgaDurlagT1
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~I can nay make much sense of his madness, save his deep sorrow. Woe be to his clan.~
END 

I_C_T DURLAGT 6 X3HelgaDurlagT1
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~I...be fearing as much. Whatever bleak foe caused this, I do feel it still stirs here.~
END 

I_C_T DOPDUR3 0 X3HelgaDopdur30 
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~Durlag nay be alive. This be madness!~
== DOPDUR3 ~Why do you hesitate, son?~
END 

I_C_T DOPDUR2 1 X3HelgaDopDur21 
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~Ye wife nay be here...though ye can nay be Durlag, can ye?~
== DOPDUR2 ~Come here, sweetling.~
END 

I_C_T DOPDUR1 1 X3HelgaDopDur11
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~Brace yerselves...this nay make sense to me.~
== DOPDUR1 ~Come to me, my child.~
END 

I_C_T DEATH2 1 X3HelgaDeath21
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~This creature nay be worthy of talk. Durlag's clan begs for vengeance.~
END 

I_C_T HURGAN 1 X3HelgaHurgan1 
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~Durlag be well renown to many a dwarf. But I be betting ye can tell the tale better than I if <CHARNAME> nay familiar.~
END

I_C_T AOLN 1 X3HelgaAOLN1 
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~A pity on ye party, though a glorious hunt it be.~
== AOLN ~Not one I would do again, dwarf. Now off you go.~
END

I_C_T ARDENO 2 X3HelgaARDENO2 
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~His loss. I got a nice joke about an ogre and a hammer.~
END

I_C_T ARGHAI 0 X3HelgaARGHAI0 
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~Pah! This will be worthwhile.~
END

I_C_T BANDCR 0 X3HelgaBANDCR0 
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~As i- hrngh.~
END 

I_C_T BART2 0 X3HelgaBART20 
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~Heh, as if an ogre be scary, but a drink...a drink be welcome if <CHARNAME> wishes it.~
END 

I_C_T BUB 0 X3HelgaBUB0 
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~Quiet? Pah! We should be making some noise.~
END

I_C_T DROTH 0 X3HelgaDROTH0 
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~Ye ogres all think might from size be yer strength, but ye will fall hard.~
END

I_C_T FTOWNA 0 X3HelgaFTOWNA0 
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~Pray ye sister nay run into an ogre unless she be well trained.~
END

I_C_T KIVAN 7 X3HelgaKIVAN7
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~A fellow ogre hunter, though yer reasons be more personal. Makes the hunting sweeter.~
END

INTERJECT OGRECO 0 X3HelgaOGRECO0 
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN ~We nay waiting for ye to finish, beast! Grab yer arms and face yer death!~
== OGRECO ~Me eat dessert early, pound you to pudding. Mmm, pudding.~
DO ~Enemy()~
EXIT 