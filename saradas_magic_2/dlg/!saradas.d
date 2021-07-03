BEGIN ~!SARADAS~

/* ----------------BLOCCO PRIMO INCONTRO------------------------ */

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Greetings0
  SAY @100 /* Dialogo di primo incontro */
  IF ~~ THEN REPLY @101 /* Mi ricordo di te */  GOTO Greetings1
  IF ~~ THEN REPLY @102 /* Chi sei? */   GOTO Greetings2
  IF ~~ THEN REPLY @103 /* Mi stai seguendo?? */  GOTO Greetings3
END

IF ~~ THEN BEGIN Greetings1
  SAY @104 /* La tua natura, che posso fare per te */
  IF ~~ THEN REPLY @105 /* ci pensero' su, apri negozio*/ DO ~StartStore("!saradas",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @106 /* me ne vado */ GOTO Greetings1_2
END

IF ~~ THEN BEGIN Greetings1_2
  SAY @107   /* non temere la troverai */
  IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN Greetings2
  SAY @108  /* mi presento */
  IF ~~ THEN REPLY @109   /* apri negozio */   DO ~StartStore("!saradas",LastTalkedToBy(Myself))~  EXIT
  IF ~~ THEN REPLY @110   /* chi sono gli Stregoni Incappucciati? */ GOTO Greetings2_2
  IF ~~ THEN REPLY @111   /* provocazione Saradas */  GOTO SaradasProvoked1
END

IF ~~ THEN BEGIN Greetings2_2
  SAY @178  /* sono corrotti */
  IF ~~ THEN REPLY @180   /* capisco, mostrami le merci */  DO ~StartStore("!saradas",LastTalkedToBy(Myself))~  EXIT
  IF ~~ THEN REPLY @179   /* grazie, me ne vado */  EXIT
END

IF ~~ THEN BEGIN Greetings3
  SAY @119  /* Sei presuntuoso.*/
  IF ~~ THEN REPLY @120  /* apri negozio */  DO ~StartStore("!saradas",LastTalkedToBy(Myself))~  EXIT
  IF ~~ THEN REPLY @121  /* me ne vado  */ GOTO SaradasFacepalm
END

IF ~~ THEN BEGIN SaradasFacepalm
  SAY @122  /* facepalm */
  IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN SaradasProvoked1
  SAY @115 /* Non amo dare dimostrazione dei miei poteri*/
  IF ~~ THEN REPLY @116 /* D'accordo nonnetto, fatti sotto!*/   DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @117 /* Mmm...forse sara'  per la prossima volta!*/ GOTO SaradasProvoked2
END


IF ~~ THEN BEGIN SaradasProvoked2
  SAY @118 /* ~Saggia decisione, ora va.*/
  IF ~~ THEN EXIT
END



/* ---------------BLOCCO ARTEFATTI------------------------------ */

IF ~NumTimesTalkedToGT(0) global("!SGivenShadowStone","GLOBAL",0) partyhasitem("misc6p")~ THEN BEGIN ArtifactShadowStone
  SAY @165 /* avete la pietra ombra! */
  IF ~PartyGoldGT(2499)~ THEN REPLY @166  /* Incanta l'oggetto */ GOTO GiveRewardShadowStone
  IF ~~ THEN REPLY @167  /* preferisco tenerlo */  GOTO AsYouPrefer
  IF ~PartyGoldLT(2500)~ THEN REPLY @181  /* Non ho oro */  EXIT
  IF ~~ THEN REPLY @191 DO ~StartStore("!saradas",LastTalkedToBy(Myself))~  EXIT
END

IF ~~ THEN BEGIN GiveRewardShadowStone
  SAY @169 /* bene, iniziamo */
  IF ~~ THEN DO ~setglobal("!SGivenShadowStone","GLOBAL",1) TakePartyItem("misc6p") DestroyItem("misc6p") TakePartyGold(2500) DestroyGold(2500) GiveItemCreate("!Shadow2",lasttalkedtoby,1,1,0) Startcutscene("!Scut01") ~ EXIT
END

IF ~NumTimesTalkedToGT(0) global("!SGivenWaukeen","GLOBAL",0) PartyHasItem("misc8L") PartyHasItem("scrl72") PartyHasItem("misc42") PartyHasItem("misc43") PartyHasItem("misc41")~ THEN BEGIN WaukeenAndGems
  SAY @184 /* avete il mantello e le gemme */
  IF ~PartyGoldGT(3499)~ THEN REPLY @185  /* Incanta l'oggetto */ GOTO GiveRewardWaukeen
  IF ~~ THEN REPLY @167  /* preferisco tenerlo */  GOTO AsYouPrefer
  IF ~PartyGoldLT(3500)~ THEN REPLY @181  /* Non ho oro */  EXIT
  IF ~~ THEN REPLY @191 DO ~StartStore("!saradas",LastTalkedToBy(Myself))~  EXIT

END

IF ~NumTimesTalkedToGT(0) global("!SGivenWaukeen","GLOBAL",0) partyhasitem("misc8L") OR(4) !partyhasitem("scrl72") !partyhasitem("misc42") !partyhasitem("misc43") !partyhasitem("misc41")~ THEN BEGIN WaukeenNoGems
  SAY @183 /* avete il mantello ma non le gemme */
  IF ~~ THEN REPLY @192 EXIT
  IF ~~ THEN REPLY @193 DO ~StartStore("!saradas",LastTalkedToBy(Myself))~ EXIT
END


IF ~~ THEN BEGIN GiveRewardWaukeen
  SAY @169 /* bene, iniziamo */
  IF ~~ THEN DO ~setglobal("!SGivenWaukeen","GLOBAL",1) TakePartyItem("misc8l") DestroyItem("misc8l") TakePartyItem("scrl72") DestroyItem("scrl72") TakePartyItem("misc41") DestroyItem("misc41") TakePartyItem("misc42") DestroyItem("misc42") TakePartyItem("misc43") DestroyItem("misc43") TakePartyGold(3500) DestroyGold(3500) GiveItemCreate("!Swaukn",lasttalkedtoby,1,1,0) Startcutscene("!Scut01") ~ EXIT
END


IF ~~ THEN BEGIN AsYouPrefer
  SAY @168 /* come back if you change your mind */
  IF ~~ THEN EXIT
END


IF ~NumTimesTalkedToGT(0) global("!SGivenMaskStrohm","GLOBAL",0) partyhasitem("key20")~ THEN BEGIN ArtifactMaskStrohm
  SAY @170 /* avete la maschera! */
  IF ~PartyGoldGT(3499)~ THEN REPLY @171  /* Incanta l'oggetto */ GOTO GiveRewardMaskStrohm
  IF ~~ THEN REPLY @167  /* preferisco tenerlo */  GOTO AsYouPrefer
  IF ~PartyGoldLT(3500)~ THEN REPLY @181  /* Non ho oro */  EXIT
  IF ~~ THEN REPLY @191 DO ~StartStore("!saradas",LastTalkedToBy(Myself))~  EXIT

END

IF ~~ THEN BEGIN GiveRewardMaskStrohm
  SAY @169 /* a great addition to my collection */
  IF ~~ THEN DO ~setglobal("!SGivenMaskStrohm","GLOBAL",1) TakePartyItem("key20") DestroyItem("key20") TakePartyGold(3500) DestroyGold(3500) GiveItemCreate("!Strohm2",lasttalkedtoby,1,1,0) Startcutscene("!Scut01")~ EXIT
END


IF ~NumTimesTalkedToGT(0) global("!SGivenKazaBook","GLOBAL",0) partyhasitem("book89")~ THEN BEGIN ArtifactKazaBook
  SAY @172 /* avete il libro */
  IF ~PartyGoldGT(3499)~ THEN REPLY @173  /* Incanta l'oggetto */ GOTO GiveRewardKazaBook
  IF ~~ THEN REPLY @167  /* preferisco tenerlo */  GOTO AsYouPrefer
  IF ~PartyGoldLT(3500)~ THEN REPLY @181  /* Non ho oro */  EXIT
  IF ~~ THEN REPLY @191 DO ~StartStore("!saradas",LastTalkedToBy(Myself))~  EXIT
END

IF ~~ THEN BEGIN GiveRewardKazaBook
  SAY @169 /* a great addition to my collection */
  IF ~~ THEN DO ~setglobal("!SGivenKazaBook","GLOBAL",1) TakePartyItem("book89") DestroyItem("book89") TakePartyGold(3500) DestroyGold(3500) GiveItemCreate("!Skaza2",lasttalkedtoby,1,1,0) Startcutscene("!Scut01") ~ EXIT
END


IF ~NumTimesTalkedToGT(0) global("!SGivenAmaunator","GLOBAL",0) partyhasitem("key23")~ THEN BEGIN ArtifactAmaunator
  SAY @174 /* avete il simbolo di Amaunator */
  IF ~PartyGoldGT(3999)~ THEN REPLY @175  /* ecco a te l'oggetto */ GOTO GiveRewardAmaunator
  IF ~~ THEN REPLY @167  /* preferisco tenerlo */  GOTO AsYouPrefer
  IF ~PartyGoldLT(4000)~ THEN REPLY @181  /* Non ho oro */  EXIT
  IF ~~ THEN REPLY @191 DO ~StartStore("!saradas",LastTalkedToBy(Myself))~  EXIT
END

IF ~~ THEN BEGIN GiveRewardAmaunator
  SAY @169 /* a great addition to my collection */
 IF ~~ THEN DO ~setglobal("!SGivenAmaunator","GLOBAL",1) TakePartyItem("key23") DestroyItem("key23") TakePartyGold(4000) DestroyGold(4000) GiveItemCreate("!Samauna",lasttalkedtoby,1,1,0) Startcutscene("!Scut01") ~ EXIT
END


IF ~NumTimesTalkedToGT(0) global("!SGivenShaman","GLOBAL",0) partyhasitem("misc5t")~ THEN BEGIN ArtifactShaman
  SAY @176 /* avete il libro */
  IF ~PartyGoldGT(2499)~ THEN REPLY @177  /* ecco a te l'oggetto */ GOTO GiveRewardShaman
  IF ~~ THEN REPLY @167  /* preferisco tenerlo */  GOTO AsYouPrefer
  IF ~PartyGoldLT(2500)~ THEN REPLY @181  /* Non ho oro */  EXIT
  IF ~~ THEN REPLY @191 DO ~StartStore("!saradas",LastTalkedToBy(Myself))~  EXIT
END

IF ~~ THEN BEGIN GiveRewardShaman
  SAY @169 /* a great addition to my collection */
  IF ~~ THEN DO ~setglobal("!SGivenShaman","GLOBAL",1) TakePartyItem("misc5t") DestroyItem("misc5t") TakePartyGold(2500) DestroyGold(2500) GiveItemCreate("!Shaman2",lasttalkedtoby,1,1,0) Startcutscene("!Scut01")~ EXIT
END



/* ---------------BLOCCO SECONDO INCONTRO------------------------------ */

IF ~NumTimesTalkedToGT(0) GlobalLT("Chapter","GLOBAL",5)~ THEN BEGIN SaradasSecondDialog
  SAY @123 /* Oh, siete tornati.*/
  IF ~~ THEN REPLY @124 /* Bentrovato, Saradas. Apri negozio*/ DO ~StartStore("!saradas",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @125 /* A dire il vero siamo solo di passaggio*/ EXIT
  IF ~~ THEN REPLY @126 /* Ne' dell'uno ne' dell'altro.*/ EXIT
  IF 
  ~ReputationGT([PC],9)
  !GlobalTimerNotExpired("!SaradasHealedParty","GLOBAL")
  OR(6)
  HPpercentLT(Player1,50)
  HPpercentLT(Player2,50)
  HPpercentLT(Player3,50)
  HPpercentLT(Player4,50)
  HPpercentLT(Player5,50)
  HPpercentLT(Player6,50)~ THEN REPLY @134 /* Siamo feriti */ GOTO HealGoodParty
  IF
  ~ReputationGT([PC],9)
  GlobalTimerNotExpired("!SaradasHealedParty","GLOBAL")
  OR(6)
  HPpercentLT(Player1,50)
  HPpercentLT(Player2,50)
  HPpercentLT(Player3,50)
  HPpercentLT(Player4,50)
  HPpercentLT(Player5,50)
  HPpercentLT(Player6,50)~ THEN REPLY @134 /* Siamo feriti */  GOTO HealNotReady
  IF
  ~ReputationLT([PC],10)
  OR(6)
  HPpercentLT(Player1,50)
  HPpercentLT(Player2,50) 
  HPpercentLT(Player3,50) 
  HPpercentLT(Player4,50)
  HPpercentLT(Player5,50) 
  HPpercentLT(Player6,50)~ THEN REPLY @134 /* Siamo feriti */ GOTO NoHealBadParty
END

IF ~~ THEN BEGIN HealGoodParty
  SAY @135   /* Vi curero' */
IF ~~ THEN DO ~ApplySpell(player1,Cleric_cure_serious_wounds)
               ApplySpell(player2,Cleric_cure_serious_wounds)
               ApplySpell(player3,Cleric_cure_serious_wounds)
               ApplySpell(player4,Cleric_cure_serious_wounds)
               ApplySpell(player5,Cleric_cure_serious_wounds)
               ApplySpell(player6,Cleric_cure_serious_wounds)
               SetGlobalTimer("!SaradasHealedParty","GLOBAL",2400)~ EXIT
END

IF ~~ THEN BEGIN NoHealBadParty
  SAY @136   /* Non vi curero' */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN HealNotReady
  SAY @137    /* Vi ho gia' curati, tornate in seguito*/
IF ~~ THEN EXIT
END



/* ---------------BLOCCO DOPO SPELLHOLD-UNDERDARK E ASSEGNAZIONE SKILLS EPICHE------------------------------ */

IF ~NumTimesTalkedToGT(0) Global("Chapter","GLOBAL",6) global("!SaradasTalkAfterUnderdark","GLOBAL",0)~ THEN BEGIN SaradasAfterUnderdark
  SAY @127               /* Bentornati! ho saputo della vostra eroica impresa a Spellhold e Underdark */
  IF ~~ THEN REPLY @128  /* ~Oh, vedo che le notizie viaggiano piuttosto veloci...*/ GOTO SaradasTeachesEpic
  IF ~~ THEN REPLY @129  /* Non sono affari tuoi, vecchio*/ DO ~setglobal("!SaradasTalkAfterUnderdark","GLOBAL",1)~ GOTO SaradasLeaves
END

IF ~~ THEN BEGIN SaradasTeachesEpic
  SAY @130 /* non c'e' ragione di essere modesti con me*/
IF ~Kit(Protagonist,MAGESCHOOL_ABJURER)~                   THEN REPLY @132 /* I just want my soul back. Irenicus will pay */ GOTO GiveAbjurerSpell
IF ~Kit(Protagonist,MAGESCHOOL_DIVINER)~                   THEN REPLY @132 /* I just want my soul back. Irenicus will pay */ GOTO GiveDivinerSpell
IF ~Kit(Protagonist,MAGESCHOOL_ENCHANTER)~                 THEN REPLY @132 /* I just want my soul back. Irenicus will pay */ GOTO GiveEnchanterSpell
IF ~Kit(Protagonist,MAGESCHOOL_CONJURER)~                  THEN REPLY @132 /* I just want my soul back. Irenicus will pay */ GOTO GiveConjurerSpell
IF ~Kit(Protagonist,MAGESCHOOL_ILLUSIONIST)~               THEN REPLY @132 /* I just want my soul back. Irenicus will pay */ GOTO GiveIllusionistSpell
IF ~Kit(Protagonist,MAGESCHOOL_INVOKER)~                   THEN REPLY @132 /* I just want my soul back. Irenicus will pay */ GOTO GiveInvokerSpell
IF ~Kit(Protagonist,MAGESCHOOL_NECROMANCER)~               THEN REPLY @132 /* I just want my soul back. Irenicus will pay */ GOTO GiveNecromancerSpell
IF ~Kit(Protagonist,MAGESCHOOL_TRANSMUTER)~                THEN REPLY @132 /* I just want my soul back. Irenicus will pay */ GOTO GiveTransmuterSpell
IF ~Class(Protagonist,MAGE)
    !Kit(Protagonist,MAGESCHOOL_ABJURER)
    !Kit(Protagonist,MAGESCHOOL_DIVINER)
    !Kit(Protagonist,MAGESCHOOL_ENCHANTER)
    !Kit(Protagonist,MAGESCHOOL_CONJURER)
    !Kit(Protagonist,MAGESCHOOL_ILLUSIONIST)
    !Kit(Protagonist,MAGESCHOOL_INVOKER)
    !Kit(Protagonist,MAGESCHOOL_NECROMANCER)
    !Kit(Protagonist,MAGESCHOOL_TRANSMUTER)
    !Kit(Protagonist,WILDMAGE)
    !Kit(Protagonist,DRAGON_DISCIPLE)~                     THEN REPLY @132 /* I just want my soul back. Irenicus will pay */ GOTO GiveGeneralistSpell
IF ~!Kit(Protagonist,MAGESCHOOL_ABJURER)
    !Kit(Protagonist,MAGESCHOOL_DIVINER)
    !Kit(Protagonist,MAGESCHOOL_ENCHANTER)
    !Kit(Protagonist,MAGESCHOOL_CONJURER)
    !Kit(Protagonist,MAGESCHOOL_ILLUSIONIST)
    !Kit(Protagonist,MAGESCHOOL_INVOKER)
    !Kit(Protagonist,MAGESCHOOL_NECROMANCER)
    !Kit(Protagonist,MAGESCHOOL_TRANSMUTER)
    OR(5)
    Class(Protagonist,FIGHTER_MAGE)
    Class(Protagonist,FIGHTER_MAGE_THIEF)
    Class(Protagonist,MAGE_THIEF)
    Class(Protagonist,CLERIC_MAGE)
    Class(Protagonist,FIGHTER_MAGE_CLERIC)~                THEN REPLY @132 /* I just want my soul back. Irenicus will pay */ GOTO GiveGeneralistSpell
IF ~Kit(Protagonist,WILDMAGE)~                             THEN REPLY @132 /* I just want my soul back. Irenicus will pay */ GOTO GiveWildSpell
IF ~Kit(Protagonist,DRAGON_DISCIPLE)~                      THEN REPLY @132 /* I just want my soul back. Irenicus will pay */ GOTO GiveDragonSpell
IF ~~ THEN REPLY @131 /*Grazie Saradas, ma c'e' ancora molto da fare*/ DO ~setglobal("!SaradasTalkAfterUnderdark","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GiveConjurerSpell
  SAY @150
  IF ~~ THEN REPLY @161 DO ~setglobal("!SaradasTalkAfterUnderdark","GLOBAL",1) SetGlobal("!SaradasGaveSpellClassCON","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GiveWildSpell
  SAY @151
  IF ~~ THEN REPLY @161 DO ~setglobal("!SaradasTalkAfterUnderdark","GLOBAL",1) SetGlobal("!SaradasGaveSpellClassWIL","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GiveAbjurerSpell
  SAY @152
  IF ~~ THEN REPLY @161 DO ~setglobal("!SaradasTalkAfterUnderdark","GLOBAL",1) SetGlobal("!SaradasGaveSpellClassABJ","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GiveDivinerSpell
  SAY @153
  IF ~~ THEN REPLY @161 DO ~setglobal("!SaradasTalkAfterUnderdark","GLOBAL",1) SetGlobal("!SaradasGaveSpellClassDIV","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GiveEnchanterSpell
  SAY @154
  IF ~~ THEN REPLY @161 DO ~setglobal("!SaradasTalkAfterUnderdark","GLOBAL",1) SetGlobal("!SaradasGaveSpellClassENC","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GiveIllusionistSpell
  SAY @155
  IF ~~ THEN REPLY @161 DO ~setglobal("!SaradasTalkAfterUnderdark","GLOBAL",1) SetGlobal("!SaradasGaveSpellClassILL","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GiveInvokerSpell
  SAY @156
  IF ~~ THEN REPLY @161 DO ~setglobal("!SaradasTalkAfterUnderdark","GLOBAL",1) SetGlobal("!SaradasGaveSpellClassINV","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GiveNecromancerSpell
  SAY @157
  IF ~~ THEN REPLY @161 DO ~setglobal("!SaradasTalkAfterUnderdark","GLOBAL",1) SetGlobal("!SaradasGaveSpellClassNEC","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GiveTransmuterSpell
  SAY @158
  IF ~~ THEN REPLY @161 DO ~setglobal("!SaradasTalkAfterUnderdark","GLOBAL",1) SetGlobal("!SaradasGaveSpellClassALT","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GiveGeneralistSpell
  SAY @159
  IF ~~ THEN REPLY @161 DO ~setglobal("!SaradasTalkAfterUnderdark","GLOBAL",1) SetGlobal("!SaradasGaveSpellClassGEN","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GiveDragonSpell
  SAY @160
  IF ~~ THEN REPLY @161 DO ~setglobal("!SaradasTalkAfterUnderdark","GLOBAL",1) SetGlobal("!SaradasGaveSpellClassDRA","GLOBAL",1)~ EXIT
END


IF ~~ THEN BEGIN SaradasLeaves
  SAY @133  /* Va bene va bene, me ne vado */
  IF ~~ THEN DO ~ForceSpell(Myself,POOF_GONE)~ EXIT
END



/* -----------------BLOCCO ULTIMO CAPITOLO--------------------------------  */

IF ~NumTimesTalkedToGT(0) global("!SaradasTalkAfterUnderdark","GLOBAL",1) GlobalGT("Chapter","GLOBAL",5)~ THEN BEGIN SaradasFinalChapter
  SAY @162 /* The final battle awaits, son of Bhaal. */
  IF ~~ THEN REPLY @163 /* I'm ready. Irenicus will face the true wrath of a son of Bhaal.*/ DO ~StartStore("!saradas",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @164 /* I just want to live my life like any other creature of this world*/ EXIT
  IF
  ~ReputationGT([PC],9)
  !GlobalTimerNotExpired("!SaradasHealedParty","GLOBAL")
  OR(6)
  HPpercentLT(Player1,50)
  HPpercentLT(Player2,50)
  HPpercentLT(Player3,50)
  HPpercentLT(Player4,50)
  HPpercentLT(Player5,50)
  HPpercentLT(Player6,50)~ THEN REPLY @134  GOTO HealGoodParty
  IF
  ~ReputationLT([PC],10)
  OR(6)
  HPpercentLT(Player1,50)
  HPpercentLT(Player2,50) 
  HPpercentLT(Player3,50) 
  HPpercentLT(Player4,50)
  HPpercentLT(Player5,50) 
  HPpercentLT(Player6,50)~ THEN REPLY @134  GOTO NoHealBadParty
  IF
  ~ReputationGT([PC],9)
  GlobalTimerNotExpired("!SaradasHealedParty","GLOBAL")
  OR(6)
  HPpercentLT(Player1,50)
  HPpercentLT(Player2,50)
  HPpercentLT(Player3,50)
  HPpercentLT(Player4,50)
  HPpercentLT(Player5,50)
  HPpercentLT(Player6,50)~ THEN REPLY @134  GOTO HealNotReady
END

