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
@0
DO ~SetGlobal("X3milyAjantis1","GLOBAL",1)~
== BAJANT @1
== X3HelgaB @2
== BAJANT @3
== X3HelgaB @4
== BAJANT @5
== X3HelgaB @6
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
@7
DO ~SetGlobal("X3HelgaAlora","GLOBAL",1)~
== %ALORA_BANTER% @8
== X3HelgaB @9
== %ALORA_BANTER% @10
== X3HelgaB @11
== %ALORA_BANTER% @12
== X3HelgaB @13
EXIT 

//Baeloth 
CHAIN IF ~InParty("X3Helga")
See("X3Helga")
!StateCheck("Baeloth",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaBaeloth","GLOBAL",0)~ THEN BBAELOTH X3HelgaBaeloth1
@14
DO ~SetGlobal("X3HelgaBaeloth","GLOBAL",1)~
== X3HelgaB @15
== BBAELOTH @16
== X3HelgaB @17
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
@18
DO ~SetGlobal("X3HelgaBranwen","GLOBAL",1)~
== X3HelgaB @19
== X3HelgaB @20
== %BRANWEN_BANTER% @21
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
@22
DO ~SetGlobal("X3HelgaCoran","GLOBAL",1)~
== X3HelgaB @23
== %CORAN_BANTER% @24
== X3HelgaB @25
== %CORAN_BANTER% @26
== X3HelgaB @27
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
@28
DO ~SetGlobal("X3HelgaDorn","GLOBAL",1)~
== %DORN_BANTER% @29
== X3HelgaB @30
== %DORN_BANTER% @31
== X3HelgaB @32
== %DORN_BANTER% @33
== X3HelgaB @34
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
@35
DO ~SetGlobal("X3HelgaDynaheir","GLOBAL",1)~
== X3HelgaB @36
== %DYNAHEIR_BANTER% @37
== X3HelgaB @38
== %DYNAHEIR_BANTER% @39
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
@40
DO ~SetGlobal("X3HelgaEdwin","GLOBAL",1)~
== X3HelgaB @41
== %EDWIN_BANTER% @42
== X3HelgaB @43 
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
@44
DO ~SetGlobal("X3HelgaEldoth","GLOBAL",1)~
== X3HelgaB @45
== %ELDOTH_BANTER% @46
== X3HelgaB @47
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
@48
DO ~SetGlobal("X3HelgaFaldorn","GLOBAL",1)~
== X3HelgaB @49
== %FALDORN_BANTER% @50
== X3HelgaB @51
== %FALDORN_BANTER% @52
== X3HelgaB @53 
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
@54
DO ~SetGlobal("X3HelgaGarrick","GLOBAL",1)~
== %GARRICK_BANTER% @55
== X3HelgaB @56
== %GARRICK_BANTER% @57
== X3HelgaB @58
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
@59
DO ~SetGlobal("X3HelgaImoen","GLOBAL",1)~
== %IMOEN_BANTER% @60
== X3HelgaB @61
== %IMOEN_BANTER% @62
== X3HelgaB @63
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
@64
DO ~SetGlobal("X3HelgaJaheira","GLOBAL",1)~
== %JAHEIRA_BANTER% @65
== X3HelgaB @66
== %JAHEIRA_BANTER% @67
== X3HelgaB @68
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
@69
DO ~SetGlobal("X3HelgaKagain","GLOBAL",1)~
== X3HelgaB @70
== %KAGAIN_BANTER% @71
== X3HelgaB @72
EXIT 

// Khalid 1
CHAIN IF ~InParty("Khalid")
See("Khalid")
!StateCheck("Khalid",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaKhalid","GLOBAL",0)~ THEN X3HelgaB X3HelgaKhalid1
@73
DO ~SetGlobal("X3HelgaKhalid","GLOBAL",1)~
== %KHALID_BANTER% @74 
== X3HelgaB @75
== %KHALID_BANTER% @76
== X3HelgaB @77
== %KHALID_BANTER% @78
== X3HelgaB @79
EXIT

// Kivan 
CHAIN IF ~InParty("Kivan")
See("Kivan")
!StateCheck("Kivan",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaKivan","GLOBAL",0)~ THEN X3HelgaB X3HelgaKivan1
@80
DO ~SetGlobal("X3HelgaKivan","GLOBAL",1)~
== %KIVAN_BANTER% @81
== X3HelgaB @82
== %KIVAN_BANTER% @83
== X3HelgaB @84
== %KIVAN_BANTER% @85
EXIT

// Minsc 1
CHAIN IF ~InParty("X3Helga")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaMinsc","GLOBAL",0)~ THEN X3HelgaB X3HelgaMinsc1
@86
DO ~SetGlobal("X3HelgaMinsc","GLOBAL",1)~
== %MINSC_BANTER% @87
== X3HelgaB @88
== %MINSC_BANTER% @89
== X3HelgaB @90
EXIT

// Montaron
CHAIN IF ~InParty("Montaron")
See("Montaron")
!StateCheck("Montaron",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaMontaron1","GLOBAL",0)~ THEN X3HelgaB X3HelgaMontaron1
@91
DO ~SetGlobal("X3HelgaMontaron1","GLOBAL",1)~
== %MONTARON_BANTER% @92
== X3HelgaB @93
== %MONTARON_BANTER% @94
== X3HelgaB @95
EXIT

// Neera 

CHAIN IF ~InParty("X3Helga")
See("X3Helga")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaNeera","GLOBAL",0)~ THEN %NEERA_BANTER% X3HelgaNeera1
@96
DO ~SetGlobal("X3HelgaNeera","GLOBAL",1)~
== X3HelgaB @97
== %NEERA_BANTER% @98
== X3HelgaB @99
== %NEERA_BANTER% @100
== X3HelgaB @101
EXIT

// Quayle
CHAIN IF ~InParty("X3Helga")
See("X3Helga")
!StateCheck("Quayle",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaQuayle","GLOBAL",0)~ THEN %QUAYLE_BANTER% X3HelgaQuayle1
@102
DO ~SetGlobal("X3HelgaQuayle","GLOBAL",1)~
== X3HelgaB @103
== %QUAYLE_BANTER% @104
== X3HelgaB @105
== %QUAYLE_BANTER% @106
== X3HelgaB @107
== %QUAYLE_BANTER% @108
EXIT

// Rasaad

CHAIN IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaRasaad","GLOBAL",0)~ THEN X3HelgaB X3HelgaRasaad1
@109
DO ~SetGlobal("X3HelgaRasaad","GLOBAL",1)~
== %RASAAD_BANTER% @110
== X3HelgaB @111
== %RASAAD_BANTER% @112
== X3HelgaB @113
== %RASAAD_BANTER% @114
== X3HelgaB @115
EXIT

// SAFANA
CHAIN IF ~InParty("Safana")
See("Safana")
!StateCheck("Safana",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaSafana","GLOBAL",0)~ THEN X3HelgaB X3HelgaSafana1
@116
DO ~SetGlobal("X3HelgaSafana","GLOBAL",1)~
== %SAFANA_BANTER% @117
== X3HelgaB @118
== %SAFANA_BANTER% @119
== X3HelgaB @120
== %SAFANA_BANTER% @121
EXIT

// Shar-Teel 1
CHAIN IF ~InParty("X3Helga")
See("X3Helga")
!StateCheck("Sharteel",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaSharTeel","GLOBAL",0)~ THEN %SHARTEEL_BANTER% X3HelgaSharteel1
@122
DO ~SetGlobal("X3HelgaSharTeel","GLOBAL",1)~
== X3HelgaB @123
== %SHARTEEL_BANTER% @124
== X3HelgaB @125
== %SHARTEEL_BANTER% @126
== X3HelgaB @127
== %SHARTEEL_BANTER% @128
== X3HelgaB @129
== %SHARTEEL_BANTER% @130
== X3HelgaB @131
EXIT

// Skie 
CHAIN IF ~InParty("X3Helga")
See("X3Helga")
!StateCheck("Skie",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaSkie","GLOBAL",0)~ THEN %SKIE_BANTER% X3HelgaSkie1
@132
DO ~SetGlobal("X3HelgaSkie","GLOBAL",1)~
== X3HelgaB @133
== %SKIE_BANTER% @134 
== X3HelgaB @135
== %SKIE_BANTER% @136
== X3HelgaB @137
EXIT

// Tiax
CHAIN IF ~InParty("X3Helga")
See("X3Helga")
!StateCheck("Tiax",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaTiax","GLOBAL",0)~ THEN %TIAX_BANTER% X3HelgaTiax1
@138 
DO ~SetGlobal("X3HelgaTiax","GLOBAL",1)~
== X3HelgaB @139
== %TIAX_BANTER% @140
== X3HelgaB @141
EXIT

// VICONIA
CHAIN IF ~InParty("X3Helga")
See("X3Helga")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaViconia","GLOBAL",0)~ THEN %VICONIA_BANTER% X3HelgaViconia1
@142
DO ~SetGlobal("X3HelgaViconia","GLOBAL",1)~
== X3HelgaB @143
== %VICONIA_BANTER% @144
== X3HelgaB @145
== %VICONIA_BANTER% @146
EXIT

// XAN
CHAIN IF ~InParty("Xan")
See("Xan")
!StateCheck("Xan",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaXan","GLOBAL",0)~ THEN X3HelgaB X3HelgaXan1
@147
DO ~SetGlobal("X3HelgaXan","GLOBAL",1)~
== %XAN_BANTER% @148
== X3HelgaB @149
== %XAN_BANTER% @150
== X3HelgaB @151
== %XAN_BANTER% @152
== X3HelgaB @153
EXIT

// Xzar
CHAIN IF ~InParty("X3Helga")
See("X3Helga")
!StateCheck("Xzar",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaXzar","GLOBAL",0)~ THEN %XZAR_BANTER% X3HelgaXzar1
@154
DO ~SetGlobal("X3HelgaXzar","GLOBAL",1)~
== X3HelgaB @155
== %XZAR_BANTER% @156
== X3HelgaB @157
== %XZAR_BANTER% @158
== X3HelgaB @159
EXIT

// Yeslick 1
CHAIN IF ~InParty("X3Helga")
See("X3Helga")
!StateCheck("Yeslick",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaYeslick","GLOBAL",0)~ THEN %YESLICK_BANTER% X3HelgaYeslick1
@160
DO ~SetGlobal("X3HelgaYeslick","GLOBAL",1)~
== X3HelgaB @161
== %YESLICK_BANTER% @162
== X3HelgaB @163
== %YESLICK_BANTER% @164
== X3HelgaB @165
== %YESLICK_BANTER% @166
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
@167
DO ~SetGlobal("X3HelgaBranwen","GLOBAL",2)~
== X3HelgaB @168
== %BRANWEN_BANTER% @169
= @170
== X3HelgaB @171
== %BRANWEN_BANTER% @172
== X3HelgaB @173
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
@174
DO ~SetGlobal("X3HelgaDynaheir","GLOBAL",2)~
== X3HelgaB @175
== %DYNAHEIR_BANTER% @176
== X3HelgaB @177
== %DYNAHEIR_BANTER% @178
== X3HelgaB @179
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
@180
DO ~SetGlobal("X3HelgaImoen","GLOBAL",2)~
== %IMOEN_BANTER% @181
== X3HelgaB @182
== %IMOEN_BANTER% @183
== X3HelgaB @184
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
@185
DO ~SetGlobal("X3HelgaJaheira","GLOBAL",2)~
== %JAHEIRA_BANTER% @186
== X3HelgaB @187
== %JAHEIRA_BANTER% @188
== X3HelgaB @189
== X3HelgaB @190
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
@191
DO ~SetGlobal("X3HelgaKagain","GLOBAL",2)~
== %KAGAIN_BANTER% @192
== X3HelgaB @193
== %KAGAIN_BANTER% @194
== X3HelgaB @195
== %KAGAIN_BANTER% @196
EXIT 

// Khalid 2
CHAIN IF ~InParty("Khalid")
See("Khalid")
!StateCheck("Khalid",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaKhalid","GLOBAL",1)~ THEN X3HelgaB X3HelgaKhalid2
@197
DO ~SetGlobal("X3HelgaKhalid","GLOBAL",2)~
== %KHALID_BANTER% @198 
== X3HelgaB @199
== %KHALID_BANTER% @200
== X3HelgaB @201
== %KHALID_BANTER% @202
== X3HelgaB @203
EXIT

// Minsc 2 
CHAIN IF ~InParty("X3Helga")
See("X3Helga")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaMinsc","GLOBAL",1)~ THEN %MINSC_BANTER% X3HelgaMinsc2
@204
DO ~SetGlobal("X3HelgaMinsc","GLOBAL",2)~
== X3HelgaB @205
== %MINSC_BANTER% @206
== X3HelgaB @207
== %MINSC_BANTER% @208
== X3HelgaB @209
== %MINSC_BANTER% @210
== X3HelgaB @211
EXIT

// Shar-Teel 2
CHAIN IF ~InParty("X3Helga")
See("X3Helga")
!StateCheck("Sharteel",CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("X3HelgaSharTeel","GLOBAL",1)~ THEN X3HelgaB X3HelgaSharteel2
@212
DO ~SetGlobal("X3HelgaSharTeel","GLOBAL",2)~
== %SHARTEEL_BANTER% @213
== X3HelgaB @214
== %SHARTEEL_BANTER% @215
== X3HelgaB @216
== %SHARTEEL_BANTER% @217
== X3HelgaB @218
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
@219
DO ~SetGlobal("X3HelgaYeslick","GLOBAL",2)~
== %YESLICK_BANTER% @220
== X3HelgaB @221
== %YESLICK_BANTER% @222
== X3HelgaB @223
== %YESLICK_BANTER% @224
== X3HelgaB @225
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
@226
DO ~SetGlobal("X3HelgaKagain","GLOBAL",3)~
== X3HelgaB @227
== %KAGAIN_BANTER% @228
== X3HelgaB @229
== %KAGAIN_BANTER% @230
== X3HelgaB @231
== %KAGAIN_BANTER% @232
== X3HelgaB @233
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
@234
DO ~SetGlobal("X3HelgaYeslick","GLOBAL",3)~
== X3HelgaB @235
== %YESLICK_BANTER% @236
== X3HelgaB @237
== %YESLICK_BANTER% @238
== X3HelgaB @239
== %YESLICK_BANTER% @240
== X3HelgaB @241
== %YESLICK_BANTER% @242 
EXIT
