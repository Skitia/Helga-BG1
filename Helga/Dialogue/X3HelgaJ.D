BEGIN X3HelgaJ

// First Quest Reminder 

IF ~Global("X3HelgaQuestExpire","GLOBAL",2)!Dead("X3HogreL")~ X3H.Quest1E 
SAY @0
IF ~~ DO ~SetGlobalTimer("X3HelgaQuestTen","GLOBAL",TEN_DAYS)IncrementGlobal("X3HelgaQuestExpire","GLOBAL",1)~ EXIT 
END 

// Second Quest Reminder 

IF ~Global("X3HelgaQuestExpire","GLOBAL",4)!Dead("X3HogreL")~ X3H.Quest2E 
SAY @1
++ @2 + X3H.Quest2EGrumble
++ @3 + X3H.Quest2EGrumble
++ @4 + X3H.Quest2ELeave 
END 

IF ~~ X3H.Quest2EGrumble 
SAY @5
IF ~~ DO ~SetGlobalTimer("X3HelgaQuestTen","GLOBAL",TEN_DAYS)IncrementGlobal("X3HelgaQuestExpire","GLOBAL",1)~ EXIT 
END 

IF ~~ X3H.Quest2ELeave 
SAY @6
IF ~~ DO ~SetGlobal("X3HelgaQuestExpireOne","GLOBAL",7)SetGlobal("X3HelgaQuestTimerDone","GLOBAL",1)EscapeAreaMove("%bg1_eet_symbol%3302",252,249,SW)~ EXIT 
END 



// Third Strike 

IF ~Global("X3HelgaQuestExpire","GLOBAL",6)!Dead("X3HogreL")~ X3H.Quest1E 
SAY @7
IF ~~ DO ~SetGlobal("X3HelgaQuestExpireOne","GLOBAL",7)SetGlobal("X3HelgaQuestTimerDone","GLOBAL",1)EscapeAreaMove("%bg1_eet_symbol%3302",252,249,SW)~ EXIT 
END 

// Quest Done 

IF ~Dead("X3HogreL")Global("X3HelgaQuest","GLOBAL",1)~ X3HQuestDone 
SAY @8
=  @9
++ @10 + X3H.QuestDoneA
++ @11 + X3H.QuestDoneA
++ @12 + X3H.QuestDoneA
++ @13 + X3H.QuestDoneB
END 

IF ~~ X3H.QuestDoneA 
SAY @14
IF ~~ DO ~AddJournalEntry(@1004,QUEST_DONE)AddexperienceParty(600)SetGlobal("X3HelgaQuest","GLOBAL",2)~ EXIT 
END 

IF ~~ X3H.QuestDoneB 
SAY @15
IF ~~ DO ~AddJournalEntry(@1004,QUEST_DONE)AddexperienceParty(600)SetGlobal("X3HelgaQuest","GLOBAL",2)LeaveParty()EscapeAreaMove("%bg1_eet_symbol%3302",252,249,SW)~ EXIT 
END 

//Talk 1 
IF ~Global("X3HelgaTalk","GLOBAL",2)~ Talk1
SAY @16
++ @17 + T1.A
++ @18 + T1.A
++ @19 + T1.A
END 

IF ~~ T1.A
SAY @20
++ @21 + T1.B
++ @22 + T1.C
++ @23 + T1.D 
IF ~~ EXIT 
END 

IF ~~ T1.B 
SAY @24
IF ~~ + T1.E 
END 

IF ~~ T1.C 
SAY @25
IF ~~ + T1.CR 
END 

IF ~~ T1.CR 
SAY @26
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)RestParty()~ EXIT 
END 

IF ~~ T1.D 
SAY @27
IF ~~ + T1.E 
END 

IF ~~ T1.E
SAY @28
= @29
++ @30 + T1.F
++ @31 + T1.F
++ @32 + T1.G
END 

IF ~~ T1.F 
SAY @33
= @34
++ @35 + T1.Dead1 
++ @36 + T1.Almost1
++ @37 + T1.CookG 
END 

IF ~~ T1.Dead1 
SAY @38
IF ~~ + T1.CookG 
END 

IF ~~ T1.Almost1
SAY @39
IF ~~ + T1.CookG 
END 

IF ~~ T1.CookG 
SAY @40
++ @41 + T1.H
++ @42 + T1.CR
++ @43 + T1.H
END 

IF ~~ T1.G 
SAY @44
= @45
++ @35 + T1.Dead2
++ @36 + T1.Almost2 
++ @37 + T1.CookB
END 

IF ~~ T1.Almost2
SAY @39
IF ~~ + T1.CookB 
END 

IF ~~ T1.Dead2 
SAY @38
IF ~~ + T1.CookB 
END 

IF ~~ T1.CookB
SAY @46
++ @47+ T1.H
++ @42 + T1.CR
++ @48 + T1.H 
END 

IF ~~ T1.H 
SAY @49
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)RestParty()~ EXIT 
END 

// Talk2 

IF ~Global("X3HelgaTalk","GLOBAL",4)~ Talk2 
SAY @50  
++ @51 + Talk2.A
++ @52 + Talk2.B
++ @53 + Talk2.C
END 



IF ~~ Talk2.A 
SAY @54
= @55 
++ @56 + Talk2.D
++ @57 + Talk2.E
++ @58  + Talk2.F
END 

IF ~~ Talk2.B
SAY @59
++ @60 + Talk2.G
++ @61 + Talk2.H
++ @62 + Talk2.I
END 

IF ~~ Talk2.C 
SAY @63
++ @51 + Talk2.A
++ @58 + Talk2.F
++ @64 + Talk2.Exit 
END 

IF ~~ Talk2.D 
SAY @65
= @66
++ @67 + Talk2.J 
++ @68 + Talk2.K 
++ @69 + Talk2.L
END 
 
IF ~~ Talk2.E 
SAY @70
= @71
++ @56 + Talk2.D
++ @58  + Talk2.F
++ @64 + Talk2.Exit 
END 

IF ~~ Talk2.F 
SAY @72
++ @73 + Talk2.M 
++ @74 + Talk2.N 
++ @75 + Talk2.O 
END 
// A Little overboard with exit variation, but oh well. 
IF ~~ Talk2.Exit 
SAY @76 
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ Talk2.G 
SAY @77
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ Talk2.H 
SAY @78
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ Talk2.I 
SAY @79
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ Talk2.J 
SAY @80 
IF ~~ + Talk2.Story
END

IF ~~ Talk2.K 
SAY @81
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END

IF ~~ Talk2.L 
SAY @82
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END

IF ~~ Talk2.M 
SAY @83
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END

IF ~~ Talk2.N 
SAY @84
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END

IF ~~ Talk2.O 
SAY @85
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END

IF ~~ Talk2.Story 
SAY @86
= @87
= @88
++ @89 + Talk2.Story2 
++ @90 + Talk2.Story1 
++ @91 + Talk2.Exit 
END 

IF ~~ Talk2.Story1 
SAY @92
IF ~~ + Talk2.Story2 
END 

IF ~~ Talk2.Story2 
SAY @93
= @94
= @95
++ @96 + Talk2.Story3 
++ @97 + Talk2.Story4
++ @98 + Talk2.Exit 
END 

IF ~~ Talk2.Story3 
SAY @99
= @100
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ Talk2.Story4 
SAY @101
= @102
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END 

// Talk 3 

IF ~Global("X3HelgaTalk","GLOBAL",6)~ Talk3 
SAY @103
++ @104 + Talk3.A
++ @105 + Talk3.A 
++ @106 + Talk3.B
END 

IF ~~ Talk3.A 
SAY @107
++ @108 + Talk3.C 
++ @109 + Talk3.D
++ @110 + Talk3.B 
END 

IF ~~ Talk3.B 
SAY @111 
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END

IF ~~ Talk3.C
SAY @112
++ @113 + Talk3.E
++ @114 + Talk3.D 
++ @115 + Talk3.F
END 

IF ~~ Talk3.D 
SAY @116
IF ~~ + Talk3.Exit 
END

IF ~~ Talk3.E 
SAY @117
IF ~~ + Talk3.Exit 
END 

IF ~~ Talk3.Exit 
SAY @118
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END

IF ~~ Talk3.F 
SAY @119
IF ~~ + Talk3.Exit 
END 

// Talk 4

IF ~Global("X3HelgaTalk","GLOBAL",8)~ Talk4 
SAY @120
++ @121 + Talk4.A
++ @122 + Talk4.B
++ @123 + Talk4.C
++ @124 + Talk4.D
++ @125+ Talk4.E
END 

IF ~~ Talk4.A
SAY @126
IF ~~ + Talk4.Fight 
END 

IF ~~ Talk4.B 
SAY @127
IF ~~ + Talk4.Fight 
END 

IF ~~ Talk4.C
SAY @128 
++ @121 + Talk4.A
++ @122 + Talk4.B
++ @125+ Talk4.E
++ @129 + Talk4.Exit 
END 

IF ~~ Talk4.D 
SAY @130
++ @121 + Talk4.A
++ @122 + Talk4.B
++ @125+ Talk4.E
++ @129 + Talk4.Exit 
END 

IF ~~ Talk4.E 
SAY @131
IF ~~ + Talk4.Fight 
END 

IF ~~ Talk4.Exit 
SAY @132 
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END

IF ~~ Talk4.Fight 
SAY @133
= @134
++ @135 + Talk4.F 
++ @136 + Talk4.G
++ @137 + Talk4.H
END 

IF ~~ Talk4.F 
SAY @138
IF ~~ + Talk4.Exit2 
END 

IF ~~ Talk4.Exit2
SAY @139
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END

IF ~~ Talk4.G 
SAY @140 
IF ~~ + Talk4.Exit2 
END 

IF ~~ Talk4.H 
SAY @141
= @142
IF ~~ + Talk4.Exit2 
END  

// Talk 5 

IF ~Global("X3HelgaTalk","GLOBAL",10)~ Talk5 
SAY @143
++ @144 + Talk5.A 
++ @145 + Talk5.B 
++ @146 + Talk5.C 
END 

IF ~~ Talk5.A 
SAY @147
IF ~~ + Talk5.Fight 
END 

IF ~~ Talk5.B 
SAY @148
IF ~~ + Talk5.Fight 
END

IF ~~ Talk5.C 
SAY @149
IF ~~ + Talk5.Fight 
END

IF ~~ Talk5.Fight 
SAY @150
= @151
++ @152 + Talk5.D
++ @153 + Talk5.G
++ @154 + Talk5.F
END 

IF ~~ Talk5.D 
SAY @155
= @156
++ @153 + Talk5.G
++ @157 + Talk5.G
END 

IF ~~ Talk5.H
SAY @158 
++ @159 + Talk5.I 
++ @160 + Talk5.J 
++ @161 + Talk5.K 
++ @162 + Talk5.L 
END 

IF ~~ Talk5.F 
SAY @163 
++ @164 + Talk5.D 
++ @153 + Talk5.G 
++ @157 + Talk5.G 
END 

IF ~~ Talk5.G
SAY @165 
++ @159 + Talk5.I 
++ @160 + Talk5.J 
++ @161 + Talk5.K 
++ @162 + Talk5.L
END 

IF ~~ Talk5.I 
SAY @166
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END

IF ~~ Talk5.J 
SAY @167
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END

IF ~~ Talk5.K 
SAY @168
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END

IF ~~ Talk5.L
SAY @169 
IF ~~ DO ~RealSetGlobalTimer("X3HelgaTalkTimer","GLOBAL",3100)IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END


// Talk 6
IF ~Global("X3HelgaTalk","GLOBAL",12)~ Talk6 
SAY @170
++ @171 + Talk6.A
++ @124 + Talk6.B
++ @172 + Talk6.Exit 
END 

IF ~~ Talk6.A
SAY @173
= @174
++ @175 + Talk6.D
++ @89 + Talk6.E
++ @176 + Talk6.Exit 
END 

IF ~~ Talk6.B 
SAY @177
++ @178 + Talk6.A 
++ @179 + Talk6.Exit 
END 

IF ~~ Talk6.Exit
SAY @180 
IF ~~ DO ~IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ Talk6.D 
SAY @181
IF ~~ + Talk6.F 
END 

IF ~~ Talk6.E 
SAY @182
IF ~~ + Talk6.F 
END 

IF ~~ Talk6.F 
SAY @183
= @184
++ @185 + Talk6.G 
++ @186 + Talk6.H
++ @187 + Talk6.I
END 

IF ~~ Talk6.G 
SAY @188
IF ~~ DO ~IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END 


IF ~~ Talk6.H 
SAY @189
IF ~~ DO ~IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ Talk6.I 
SAY @190
IF ~~ DO ~IncrementGlobal("X3HelgaTalk","GLOBAL",1)~ EXIT 
END 

IF ~Global("X3HelgaDurlag","GLOBAL",1)~ TalkDurlag
SAY @191
= @192
++ @193 + D.1
++ @194 + D.2 
++ @195 + D.3 
END 

IF ~~ D.1 
SAY @196
IF ~~ DO ~IncrementGlobal("X3HelgaDurlag","GLOBAL",2)~ EXIT 
END

IF ~~ D.2
SAY @196
IF ~~ DO ~IncrementGlobal("X3HelgaDurlag","GLOBAL",2)~ EXIT 
END

IF ~~ D.3
SAY @197
IF ~~ DO ~IncrementGlobal("X3HelgaDurlag","GLOBAL",2)~ EXIT 
END

// GENDER CHANGE, Make sure this is below talks. 

IF ~Global("X3HelgaSexChange","GLOBAL",1)~ EGender
SAY @198
= @199
IF ~~ DO ~SetGlobal("X3HelgaSexChange","GLOBAL",2)~ EXIT
END




IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY])~ THEN BEGIN Helga.PID 
 SAY  @200  
 + ~HPPercentGT(Myself,74)RandomNum(5,1)~ + @201 + Helga.PHowAreYou1 // @201
 + ~HPPercentGT(Myself,74)RandomNum(5,2)~ + @201 + Helga.PHowAreYou2 // @201
 + ~HPPercentGT(Myself,74)RandomNum(5,3)~ + @201 + Helga.PHowAreYou3 // @201
 +~HPPercentLT(Myself,75)HPPercentGT(Myself,49)RandomNum(2,1)~+ @201 + Helga.PHowAreYouInjured // @201 //(Under 75%, Over 50%)
 +~HPPercentLT(Myself,50)~+ @201 + Helga.PHowAreYouHurt // @201 //(Under 50%)
 +~HPPercentGT(Myself,74)RandomNum(5,4)~+ @201 + Helga.PHowAreYou4 // @201
 +~HPPercentGT(Myself,74)RandomNum(5,5)~+ @201 + Helga.PHowAreYou5 // @201
 +~HPPercentLT(Myself,75)HPPercentGT(Myself,49)RandomNum(2,2)~+ @201 + Helga.PHowAreYouInjured2  // @201
 ++ @202  + Helga.PTalk // @202 
 ++ @203  EXIT // @203 
 END 

IF ~~ Helga.PHowAreYou1
SAY @204 
IF ~~ EXIT  
END 

IF ~~ Helga.PHowAreYou2
SAY @205 
IF ~~ EXIT  
END

IF ~~ Helga.PHowAreYou3
SAY @206 
IF ~~ EXIT  
END

IF ~~ Helga.PHowAreYouInjured
SAY @207 
IF ~~ EXIT  
END

IF ~~ Helga.PHowAreYouHurt
SAY @208 
IF ~~ EXIT  
END

IF ~~ Helga.PHowAreYou4
SAY @209
IF ~~ EXIT  
END

IF ~~ Helga.PHowAreYou5
SAY @210
IF ~~ EXIT  
END

IF ~~ Helga.PHowAreYouInjured2
SAY @211
IF ~~ EXIT  
END


  
IF ~~ Helga.PTalk 
SAY  @200  
/*Options will  vary as the game goes on.*/ 
/*Chapter Advice, these repeat.*/ 
+~Global("Chapter","GLOBAL",1)~+ @212 + Helga.PC1Advice // @212
+~Global("Chapter","GLOBAL",2)~+ @212 + Helga.PC2Advice // @212
+~Global("Chapter","GLOBAL",3)~+ @212 + Helga.PC3Advice // @212
+~Global("Chapter","GLOBAL",4)~+ @212 + Helga.PC4Advice // @212
+~Global("Chapter","GLOBAL",5)~+ @212 + Helga.PC5Advice // @212
+~Global("Chapter","GLOBAL",6)~+ @212 + Helga.PC6Advice // @212
+~Global("Chapter","GLOBAL",7)~+ @212 + Helga.PC7Advice // @212
// Companion Thoughts 
+~NumInPartyAliveGT(2)~+ @213 + Helga.PCompanionThoughts // @213 
+~ReputationGT(Player1,5)~+ @214 + Em.Me1 // @214
+~ReputationLT(Player1,6)~+ @214 + Em.Me2 // @214
// Dialogue From Talk Expansions. These fire once. 
+~Global("X3HelgaOgreTopic","GLOBAL",0)~+ @215 DO ~SetGlobal("X3HelgaOgreTopic","GLOBAL",1)~  + Helga.PT1Ogre  // @215
+~GlobalGT("X3HelgaTalk","GLOBAL",4)Global("X3HelgaHaelaTopic","GLOBAL",0)~+ @216 DO ~SetGlobal("X3HelgaHaelaTopic","GLOBAL",1)~ + Helga.PT2Haela 
+~GlobalGT("X3HelgaTalk","GLOBAL",6)Global("X3HelgaHusbandTopic","GLOBAL",0)~+ @217 DO ~SetGlobal("X3HelgaHusbandTopic","GLOBAL",1)~ + Helga.PT3Husband
++ @218 EXIT 
++ @219 EXIT 
END 

IF ~~ FixString 
SAY @220
IF ~~ DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("X3HReset")~ EXIT 
END 

IF ~~ Helga.PC1Advice 
SAY @221
IF ~~ EXIT 
END 

IF ~~ Helga.PC2Advice 
SAY @222
IF ~~ EXIT 
END 

IF ~~ Helga.PC3Advice 
SAY @223
IF ~~ EXIT 
END 

IF ~~ Helga.PC4Advice 
SAY @224
IF ~~ EXIT 
END 

IF ~~ Helga.PC5Advice 
SAY @225
IF ~~ EXIT 
END 

IF ~~ Helga.PC6Advice 
SAY @226
IF ~~ EXIT 
END 

IF ~~ Helga.PC7Advice 
SAY @227
IF ~~ EXIT 
END 

IF ~~ Helga.PCompanionThoughts 
SAY @228 
IF ~~ EXIT 
END 

IF ~~ Em.Me1
SAY @229
IF ~~ EXIT 
END 

IF ~~ Em.Me2 
SAY @230
IF ~~ EXIT 
END 

IF ~~ Helga.PT1Ogre
SAY @231
= @232
= @233
++ @234 + Helga.PTalk 
++ @235 + HelgaP1Exit 
END  

IF ~~ HelgaP1Exit 
SAY @236
IF ~~ EXIT 
END 

IF ~~ Helga.PT2Haela
SAY @237
= @238
++ @239 + PT2Thanks 
++ @240 + PT2Berserk
+~OR(3)Class(Player1,CLERIC_ALL)InParty("Branwen")CheckStatGT(Player1,50,LORE)~+ @241 + PT2Tempus
END 

IF ~~ PT2Thanks 
SAY @242
IF ~~ EXIT 
END 

IF ~~ PT2Berserk 
SAY @243
= @244
IF ~~ + PT2Thanks 
END 

IF ~~ PT2Tempus 
SAY @245
IF ~InParty("Branwen")~ + PT2Branwen 
IF ~!InParty("Branwen")~ + PT2Temp2 
END 

IF ~~ PT2Branwen 
SAY @246
IF ~~ + PT2Thanks  
END

IF ~~ PT2Temp2 
SAY @247 
IF ~~ + PT2Thanks 
END 

IF ~~ Helga.PT3Husband 
SAY @248
= @249
++ @250 + Helga.PT3Loss 
++ @251 + Helga.PT3Kill 
++ @252 + Helga.PT3New 
END 

IF ~~ Helga.PT3Loss 
SAY @253
IF ~~ + Helga.PT3Exit 
END 

IF ~~ Helga.PT3Kill 
SAY @254
IF ~~ + Helga.PT3Exit 
END 

IF ~~ Helga.PT3New 
SAY @255
IF ~~ + Helga.PT3Exit 
END 

IF ~~ Helga.PT3Exit 
SAY @256
IF ~~ EXIT 
END 

I_C_T BJORNI 1 X3HelgaBJORNI1 
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @257
END 

I_C_T MULAHE 0 X3HelgaMULAHE3 
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @258
END 

I_C_T RAIKEN 3 X3HelgaRaiken
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @259
END

I_C_T TAZOK 4 X3HelgaTazok4
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @260
END

I_C_T DRASUS 0 X3HelgaDrasus0
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @261
END

I_C_T FABER 0 X3HelgaFaber0 
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @262
== FABER @263
END 

I_C_T SLAVE6 0 X3HelgaSlave6 
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @264
== SLAVE6 @265
END 

I_C_T TIPIAN 2 X3HelgaTipian2 
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @266
== TIPIAN @267
END 

I_C_T DAVAEO 0 X3HelgaDAVAEO0
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @268
== DAVAEO @269
END 

I_C_T STEPHA 0 X3HelgaSTEPHA0 
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @270
END 

I_C_T RIELTA 1 X3HelgaRielta1 
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @271
END

I_C_T KIRINHAL 3 X3HelgaKIRINHAL3
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @272
END 

I_C_T Kiel 0 X3HelgaKiel0
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @273
END 

I_C_T ISLANNE 0 X3HelgaISLANNE0
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @274
END 

I_C_T DURLAGT 1 X3HelgaDurlagT1
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @275
END 

I_C_T DURLAGT 6 X3HelgaDurlagT1
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @276
END 

I_C_T DOPDUR3 0 X3HelgaDopdur30 
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @277
== DOPDUR3 @278
END 

I_C_T DOPDUR2 1 X3HelgaDopDur21 
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @279
== DOPDUR2 @280
END 

I_C_T DOPDUR1 1 X3HelgaDopDur11
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @281
== DOPDUR1 @282
END 

I_C_T DEATH2 1 X3HelgaDeath21
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @283
END 

I_C_T HURGAN 1 X3HelgaHurgan1 
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @284
END

I_C_T AOLN 1 X3HelgaAOLN1 
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @285
== AOLN @286
END

I_C_T ARDENO 2 X3HelgaARDENO2 
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @287
END

I_C_T ARGHAI 0 X3HelgaARGHAI0 
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @288
END

I_C_T BANDCR 0 X3HelgaBANDCR0 
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @289
END 

I_C_T BART2 0 X3HelgaBART20 
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @290
END 

I_C_T BUB 0 X3HelgaBUB0 
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @291
END

I_C_T DROTH 0 X3HelgaDROTH0 
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @292
END

I_C_T FTOWNA 0 X3HelgaFTOWNA0 
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @293
END

I_C_T KIVAN 7 X3HelgaKIVAN7
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @294
END

INTERJECT OGRECO 0 X3HelgaOGRECO0 
== X3HelgaJ IF ~InParty("X3Helga") InMyArea("X3Helga") !StateCheck("X3Helga",CD_STATE_NOTVALID)~ THEN @295
== OGRECO @296
DO ~Enemy()~
EXIT 