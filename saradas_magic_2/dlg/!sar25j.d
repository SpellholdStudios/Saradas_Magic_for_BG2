BEGIN ~!Sar25J~

/////////////////////////
//     Volo's Poem     //
/////////////////////////

EXTEND_TOP SARVOLO 9 #16
   + ~InParty("!Sartob")~ + @0 + Volo_1
END

APPEND ~SARVOLO~
  IF ~~ Volo_1
    SAY  @1
    IF ~~ EXTERN ~!Sar25J~ Volo_2
END
END

APPEND ~!Sar25J~
  IF ~~ Volo_2
    SAY @2
    IF ~~ EXTERN SARVOLO 9
  END
END


//////////////////////////
//      Elminster    /////
//////////////////////////

APPEND_EARLY ~AMELM01~
  IF ~InParty("!Sartob")~ Elmin01
    SAY @3
    IF ~~ EXTERN ~!Sar25J~ Elmin02
  END
END

APPEND ~!Sar25J~
  IF ~~ Elmin02
    SAY @4
    IF ~~ EXTERN AMELM01 Elmin03
  END
END

APPEND ~AMELM01~
IF ~~ Elmin03
    SAY @5
    IF ~~ THEN REPLY #71711 /* ~Elminster?~ */ DO ~EraseJournalEntry(73859)~ GOTO 1
  END
END

ADD_STATE_TRIGGER AMELM01 0
~!InParty("!sartob")~


/////////////////////
//  Interjections  //
/////////////////////

INTERJECT_COPY_TRANS GORDEMO 1 Demogorgon  //Ingresso Demogorgon
== ~!Sar25J~ IF ~InParty("!sartob") InMyArea("!sartob")~ THEN
@6
END


INTERJECT_COPY_TRANS SARMEL01 45 Poteri_protagonista
== ~!Sar25J~ IF ~InParty("!sartob") InMyArea("!sartob") CheckStatGT(protagonist,16,INT)~ THEN
@7
END

INTERJECT_COPY_TRANS2 GROMNIR 4 Gromnir_Melissan
== ~!Sar25J~ IF ~InParty("!sartob") InMyArea("!sartob")~ THEN
@8
END


INTERJECT_COPY_TRANS HGNYA01 6 Nyalee //Incontro con Nyalee
== ~!Sar25J~ IF ~InParty("!sartob") InMyArea("!sartob")~ THEN
@9
END


INTERJECT_COPY_TRANS YAGA01 4 Yagahurt //Yaga Shura ferito
== ~!Sar25J~ IF ~InParty("!sartob") InMyArea("!sartob")~ THEN
@10
END

INTERJECT_COPY_TRANS ABAZIGAL 3 Abazigal_Morto_1
== ~!Sar25J~ IF ~InParty("!sartob") InMyArea("!sartob")~ THEN
@11
END

INTERJECT_COPY_TRANS SENDAI 15 Sendai_Morta_1
== ~!Sar25J~ IF ~InParty("!sartob") InMyArea("!sartob")~ THEN
@12
END

INTERJECT_COPY_TRANS2 BALTH 29 Balth_libero_arbitrio
== ~!Sar25J~ IF ~InParty("!sartob") InMyArea("!sartob")~ THEN
@13
END

INTERJECT_COPY_TRANS SOLAR 23 Passato_Protagonista
== ~!Sar25J~ IF ~InParty("!sartob") InMyArea("!sartob")~ THEN
@14
END

INTERJECT_COPY_TRANS SOLAR 47 Intenzioni_protagonista   //prima era 56
== ~!Sar25J~ IF ~InParty("!sartob") InMyArea("!sartob")~ THEN
@15
END

INTERJECT_COPY_TRANS MELISS01 11 Gromnir_was_right
== ~!Sar25J~ IF ~InParty("!sartob") InMyArea("!sartob")~ THEN
@16
END

INTERJECT_COPY_TRANS FINMEL01 13 Amelyssan_sconfitta
== ~!Sar25J~ IF ~InParty("!sartob") InMyArea("!sartob")~ THEN
@17
END

INTERJECT_COPY_TRANS FINSOL01 27 Decisione_finale
== ~!Sar25J~ IF ~InParty("!sartob") InMyArea("!sartob")~ THEN
@18
= @19
= @20
= @21
END

INTERJECT_COPY_TRANS FINSOL01 31 Protagonista_good_ascension
== ~!Sar25J~ IF ~InParty("!sartob") InMyArea("!sartob")~ THEN
@22
= @23
= @24
END

INTERJECT_COPY_TRANS FINSOL01 32 Protagonista_Mortale
== ~!Sar25J~ IF ~InParty("!sartob") InMyArea("!sartob")~ THEN
@25
= @26
= @27
END

//  Saradas lascia il party

CHAIN
IF ~ReputationLT(Player1,5)
!ActuallyInCombat()
Global("!SaradasLowRepLeaves","GLOBAL",0)~
THEN ~!Sar25J~ Saradas_Lascia
@28
DO ~SetGlobal("!SaradasLowRepLeaves","GLOBAL",1) SetGlobal("!SaradasJoined","GLOBAL",0)~
= @29
DO ~DialogInterrupt(FALSE) LeaveParty() SetGlobal("!SaradasJoined","GLOBAL",0) wait(1) NoAction() smallwait(4) ForceSpell(Myself,POOF_GONE) DialogInterrupt(TRUE)~
EXIT



////////////////////////////
///  Potere Crescente 1  ///
////////////////////////////

CHAIN
IF ~RealGlobalTimerExpired("!Saradas3BSDTimer","GLOBAL")
Global("!Saradas3BSDTimerSet","GLOBAL",1)
DEAD("yaga01") 
DEAD("illasera") 
DEAD("gromnir")~
THEN ~!Sar25J~ Stronger
@30 DO ~SetGlobal("!Saradas3BSDTimerSet","GLOBAL",2)~
= @31
END
+~Alignment(protagonist,MASK_GOOD)~+ @32 + Good1-2
+~OR(4) Alignment(protagonist,MASK_GOOD) Alignment(protagonist,NEUTRAL) Alignment(protagonist,CHAOTIC_NEUTRAL) Alignment(protagonist,LAWFUL_NEUTRAL)~+ @33 + Good1
++ @34 + Neutral1
++ @35 + Evil1

CHAIN
IF ~~ THEN ~!Sar25J~ Good1
@36
= @37
END
++ @38 + Good1-1
++ @39 + Good1-2

CHAIN
IF ~~ THEN ~!Sar25J~ Good1-1
@40
= @41
END
+~Gender(Player1,FEMALE)~+ @42 + Good1-2
+~Gender(Player1,MALE)~+   @43 + Good1-2

CHAIN
IF ~~ THEN ~!Sar25J~ Good1-2
@44
= @45
EXIT

CHAIN
IF ~~ THEN ~!Sar25J~ Neutral1
@46
= @47
END
++ @48 + Neutral1-1
++ @49 + Neutral1-2

CHAIN
IF ~~ THEN ~!Sar25J~ Neutral1-1
@50
= @51
EXIT

CHAIN
IF ~~ THEN ~!Sar25J~ Neutral1-2
@52
= @53
END
++ @54 + Good1-2
++ @55 + Neutral1-3

CHAIN
IF ~~ THEN ~!Sar25J~ Neutral1-3
@56
= @57
END
++ @58
EXIT

CHAIN
IF ~~ THEN ~!Sar25J~ Evil1
@59
= @60
END
++ @61 + Evil1-2
++ @62 + Evil1-3

CHAIN
IF ~~ THEN ~!Sar25J~ Evil1-2
@63
= @64
END
++ @65 DO ~DialogInterrupt(FALSE) LeaveParty() SetGlobal("!SaradasJoined","GLOBAL",0) SetGlobal("!SaradasLeavesEvilPlayer","GLOBAL",1) wait(1) NoAction() smallwait(4) ForceSpell(Myself,POOF_GONE) DialogInterrupt(TRUE)~ EXIT

CHAIN
IF ~~ THEN ~!Sar25J~ Evil1-3
@66
= @67
EXIT



///////////////////////////
///  Potere Crescente 2  //
///////////////////////////

CHAIN
IF ~RealGlobalTimerExpired("!Saradas5BSDTimer","GLOBAL")
Global("!Saradas5BSDTimerSet","GLOBAL",1)
DEAD("yaga01") 
DEAD("illasera") 
DEAD("gromnir")
DEAD("abazigal")
DEAD("sendai")
!DEAD("balth")~
THEN ~!Sar25J~ Stronger2
@68 DO ~SetGlobal("!Saradas5BSDTimerSet","GLOBAL",2)~
= @69
END
+~Alignment(protagonist,MASK_GOOD)~+ @70 + 2Good1
++ @71 + 2Neutral1
++ @72 + AltNeutral1
++ @73 + 2Evil1

CHAIN
IF ~~ THEN ~!Sar25J~ 2Good1
@74
= @75
END
++ @76 + 2Good2

CHAIN
IF ~~ THEN ~!Sar25J~ 2Good2
@77
= @78
END
++ @79 EXIT

CHAIN
IF ~~ THEN ~!Sar25J~ 2Neutral1
@80
= @81
END
++ @82 + 2Neutral2
+~Gender(Player1,MALE)~+ @83 + 2Neutral3

CHAIN
IF ~~ THEN ~!Sar25J~ 2Neutral2
@84
EXIT

CHAIN
IF ~~ THEN ~!Sar25J~ 2Neutral3
@85
= @86
END
++ @87 EXIT


CHAIN
IF ~~ THEN ~!Sar25J~ AltNeutral1
@88
END
++ @89 + AltNeutral2
++ @90 + AltNeutral2

CHAIN
IF ~~ THEN ~!Sar25J~ AltNeutral2
@91
=@92
EXIT

CHAIN
IF ~~ THEN ~!Sar25J~ 2Evil1
@93
=@94
END
++ @95 + 2Evil2
++ @96 + 2Evil3


CHAIN
IF ~~ THEN ~!Sar25J~ 2Evil2
@97
END
++ @98 + 2Evil2-2

CHAIN
IF ~~ THEN ~!Sar25J~ 2Evil2-2
@99
=@100 DO ~DialogInterrupt(FALSE)  LeaveParty() SetGlobal("!SaradasJoined","GLOBAL",0) SetGlobal("!SaradasLeavesEvilPlayer","GLOBAL",1) wait(1) NoAction() smallwait(4) ForceSpell(Myself,POOF_GONE) DialogInterrupt(TRUE)~
EXIT

CHAIN
IF ~~ THEN ~!Sar25J~ 2Evil3
@101
=@102
END
++ @103 + 2Evil2
++ @104 + 2Evil3-2

CHAIN
IF ~~ THEN ~!Sar25J~ 2Evil3-2
@105
=@106
EXIT



///////////////////////////////
//  Potere Crescente 3 Good  //
///////////////////////////////

CHAIN
IF ~
DEAD("yaga01")
DEAD("illasera")
DEAD("gromnir")
DEAD("abazigal")
DEAD("sendai")
DEAD("balth")
DEAD("CHALRV01")
Global("!SaradasAllBSDTimerSet","GLOBAL",1)
OR(4)
Alignment(protagonist,MASK_GOOD) 
Alignment(protagonist,NEUTRAL) 
Alignment(protagonist,CHAOTIC_NEUTRAL) 
Alignment(protagonist,LAWFUL_NEUTRAL)~
THEN ~!Sar25J~ Stronger3_Good
@107 DO ~SetGlobal("!SaradasAllBSDTimerSet","GLOBAL",2)~
= @108
END
++ @109 + 3Good1
++ @110 + 3Neutral1
++ @111 + AltGood1


CHAIN
IF ~~ THEN ~!Sar25J~ 3Good1
@112
=@113
END
++ @114 + 3Good1-2
++ @115 + 3Good1-2

CHAIN
IF ~~ THEN ~!Sar25J~ 3Good1-2
@116
=@117
END
++ @118 + 3Good1-3

CHAIN
IF ~~ THEN ~!Sar25J~ 3Good1-3
@119
=@120
EXIT

CHAIN
IF ~~ THEN ~!Sar25J~ 3Neutral1
@121
END
++ @122 + 3Neutral1-2
++ @123 + 3Neutral1-2

CHAIN
IF ~~ THEN ~!Sar25J~ 3Neutral1-2
@124
EXIT 

CHAIN
IF ~~ THEN ~!Sar25J~ AltGood1
@125
END
++ @126 EXIT



///////////////////////////////
//  Potere Crescente 3 Evil  //
///////////////////////////////

CHAIN
IF ~
DEAD("yaga01")
DEAD("illasera")
DEAD("gromnir")
DEAD("abazigal")
DEAD("sendai")
DEAD("balth")
DEAD("CHALRV01")
Global("!SaradasAllBSDTimerSet","GLOBAL",1)
Alignment(protagonist,MASK_EVIL)~
THEN ~!Sar25J~ Stronger3_Evil
@127 DO ~SetGlobal("!SaradasAllBSDTimerSet","GLOBAL",2)~
= @128
END
++ @129 + 3Evil1
++ @130 + 3Evil1
++ @131 + 3Evil3

CHAIN
IF ~~ THEN ~!Sar25J~ 3Evil1
@132
= @133
END
++ @134 + 3Evil1-2

CHAIN
IF ~~ THEN ~!Sar25J~ 3Evil1-2
@135 DO ~DialogInterrupt(FALSE)  LeaveParty() SetGlobal("!SaradasJoined","GLOBAL",0) SetGlobal("!SaradasLeavesEvilPlayer","GLOBAL",1) wait(1) NoAction() smallwait(4) ForceSpell(Myself,POOF_GONE) DialogInterrupt(TRUE)~
EXIT

CHAIN
IF ~~ THEN ~!Sar25J~ 3Evil3
@136
END
++ @137 + 3Evil1



//////////////////////////
//  Discorsi con Imoen  //
//////////////////////////

CHAIN
IF ~InParty("!Sartob")
InParty("Imoen2")
!ActuallyInCombat()
IsValidForPartyDialog("Imoen2")
IsValidForPartyDialog("!sartob")
OR(4)
Alignment(protagonist,MASK_GOOD)
Alignment(protagonist,NEUTRAL)
Alignment(protagonist,CHAOTIC_NEUTRAL)
Alignment(protagonist,LAWFUL_NEUTRAL)
Global("!SImoenBanter","GLOBAL",0)
RealGlobalTimerExpired("!SImoen1stBTimer","GLOBAL")~
THEN ~!Sar25J~ BImoenGOOD1
@138 DO ~SetGlobal("!SImoenBanter","GLOBAL",1)~
== IMOEN25J @139
== ~!Sar25J~ @140
== IMOEN25J @141
== ~!Sar25J~ @142
== IMOEN25J @143
== ~!Sar25J~ @144
== IMOEN25J @145
== ~!Sar25J~  @146
=    @147
== IMOEN25J @148
=   @149 DO ~RealSetGlobalTimer("!SImoenFirstBanter","GLOBAL",4500)~
EXIT

CHAIN
IF ~InParty("!Sartob")
InParty("Imoen2")
!ActuallyInCombat()
IsValidForPartyDialog("Imoen2")
IsValidForPartyDialog("!sartob")
Alignment(protagonist,MASK_EVIL)
Global("!SImoenBanter","GLOBAL",0)
RealGlobalTimerExpired("!SImoen1stBTimer","GLOBAL")~
THEN ~!Sar25J~ BImoenEVIL1
@138 DO ~SetGlobal("!SImoenBanter","GLOBAL",1)~
== IMOEN25J @139
== ~!Sar25J~ @140
== IMOEN25J @150
== ~!Sar25J~ @142
== IMOEN25J @143
== ~!Sar25J~ @144
== IMOEN25J @145
== ~!Sar25J~  @146
=    @147
== IMOEN25J @148
=   @149 DO ~RealSetGlobalTimer("!SImoenFirstBanter","GLOBAL",4500)~
EXIT

CHAIN
IF ~InParty("!Sartob")
InParty("Imoen2")
!ActuallyInCombat()
IsValidForPartyDialog("!Sartob")
IsValidForPartyDialog("Imoen2")
OR(4)
Alignment(protagonist,MASK_GOOD)
Alignment(protagonist,NEUTRAL)
Alignment(protagonist,CHAOTIC_NEUTRAL)
Alignment(protagonist,LAWFUL_NEUTRAL)
Global("!SImoenBanter","GLOBAL",1)
RealGlobalTimerExpired("!SImoenFirstBanter","GLOBAL")~
THEN ~!Sar25J~ BImoenGOOD2
@151 DO ~SetGlobal("!SImoenBanter","GLOBAL",2)~
== IMOEN25J @152
== ~!Sar25J~ @153
== IMOEN25J @154
== ~!Sar25J~ @155
== IMOEN25J @156
== ~!Sar25J~ @157
== IMOEN25J @158
== ~!Sar25J~  @159
== IMOEN25J @160
EXIT

CHAIN
IF ~InParty("!Sartob")
InParty("Imoen2")
!ActuallyInCombat()
IsValidForPartyDialog("Imoen2")
IsValidForPartyDialog("!sartob")
Alignment(protagonist,MASK_EVIL)
Global("!SImoenBanter","GLOBAL",1)
RealGlobalTimerExpired("!SImoenFirstBanter","GLOBAL")~
THEN ~!Sar25J~ BImoenEVIL2
@151 DO ~SetGlobal("!SImoenBanter","GLOBAL",2)~
== IMOEN25J @152
== ~!Sar25J~ @153
== IMOEN25J @154
== ~!Sar25J~ @161
== IMOEN25J @156
== ~!Sar25J~ @157
== IMOEN25J @158
== ~!Sar25J~  @159
== IMOEN25J @160
EXIT

CHAIN
IF ~InParty("!Sartob")
InParty("Imoen2")
!ActuallyInCombat()
IsValidForPartyDialog("Imoen2")
IsValidForPartyDialog("!sartob")
RealGlobalTimerExpired("!SGorionsPastTimer","GLOBAL")
Global("TalkedToSolar","GLOBAL",3)
Global("!SImoenBanter","GLOBAL",2)~
THEN ~!Sar25J~ BImoenGorionsPast
@162 DO ~SetGlobal("!SImoenBanter","GLOBAL",3)~
== IMOEN25J @163
== ~!Sar25J~ @164
== IMOEN25J @165
== ~!Sar25J~ @166
== IMOEN25J @167
== ~!Sar25J~ @168
== IMOEN25J @169
== ~!Sar25J~ @170
== IMOEN25J @171
== ~!Sar25J~ @172
= @173
== IMOEN25J @174
= @175
== ~!Sar25J~ @176
EXIT



///////////////////////
//  Edwin o Edwina?  //
///////////////////////

CHAIN
IF ~InParty("!Sartob")
InParty("Edwin")
!ActuallyInCombat()
IsValidForPartyDialog("Edwin")
IsValidForPartyDialog("!sartob")
GlobalTimerExpired("!SWeMetElminsterTimerTaunt","GLOBAL")
Global("!SWeMetElminster","GLOBAL",6)~
THEN ~!Sar25J~ TauntingEdwin
@177 DO ~SetGlobal("!SWeMetElminster","GLOBAL",7)~
== EDWIN25J @178
== ~!Sar25J~ @179
== EDWIN25J @180
== ~!Sar25J~ @181
== EDWIN25J @182
== ~!Sar25J~ @183
= @184
== EDWIN25J @185
== ~!Sar25J~ @186
= @187
= @188
END
++ @189 + EdwinCambiaNome
++ @190 + EdwinNonCambiaNome
+~InParty("Viconia")~+ @191 + EdwinNonCambiaNomeVicky
+~!InParty("Viconia")~+ @191 + EdwinNonCambiaNomeNoVicky

CHAIN
IF ~~ THEN ~!Sar25J~ EdwinCambiaNome
@192
== EDWIN25J @193 DO ~SetGlobal("!SEdwinChangeName","GLOBAL",1)~
EXIT

CHAIN
IF ~~ THEN ~!Sar25J~ EdwinNonCambiaNome
@194
EXIT

CHAIN
IF ~~ THEN ~!Sar25J~ EdwinNonCambiaNomeNoVicky
@195
== EDWIN25J @196
EXIT

CHAIN
IF ~~ THEN ~!Sar25J~ EdwinNonCambiaNomeVicky
@195
== EDWIN25J @197
== VICON25J @198
EXIT
